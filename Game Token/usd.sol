// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract USD is ERC20 , ERC20Permit, ERC20Burnable, ERC20Pausable, Ownable {

    uint256 private _taxRate; // Tax rate in basis points (1 basis point = 0.01%)
    address private _taxWallet;
    mapping(address => bool) private _whitelist;
    address[] private _whitelistedAddresses;

    event TokenRecovered(address tokenAddress, uint256 tokenAmount);

    //Constructor
    constructor(address initialOwner,address taxWallet) ERC20("PlayBlock", "USD") ERC20Permit("PlayBlock") Ownable(initialOwner){
         _taxRate = 0; // Initialize tax rate to 0
         _taxWallet = taxWallet;
    }

    //Functions
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(address account, uint256 amount) public onlyOwner {
        _burn(account, amount);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function _update(address from, address to, uint256 amount) internal override (ERC20,ERC20Pausable) {
        uint256 taxAmount = 0;

        if (!_whitelist[from] && !_whitelist[to] && _taxRate > 0) {
            taxAmount = (amount * _taxRate) / 10000;
            require(taxAmount > 0, "PlayBlock: Tax amount too low");
            super._update(from, _taxWallet, taxAmount); //Send the tax amount to tax wallet
        }

        uint256 amountAfterTax = amount - taxAmount;

        super._update(from, to, amountAfterTax); //Send the tokens with deducted tax
        
    }

    function recoverToken(address tokenAddress, uint256 tokenAmount) public onlyOwner {
        require(tokenAddress != address(this), "Cannot recover this token type");
        IERC20(tokenAddress).transfer(owner(), tokenAmount);
        emit TokenRecovered(tokenAddress, tokenAmount);
    }

    function setTaxRate(uint256 newTaxRate) public onlyOwner {
        require(newTaxRate <= 1000, "Tax rate cannot exceed 1%");
        _taxRate = newTaxRate;
    }

    function getTaxRate() public view returns (uint256) {
        return _taxRate;
    }

    function setTaxWallet(address newTaxWallet) public onlyOwner {
        require(newTaxWallet != address(0), "Tax wallet address cannot be the zero address");
        _taxWallet = newTaxWallet;
    }

    function getTaxWallet() public view returns (address) {
        return _taxWallet;
    }

    function addToNoTaxWhitelist(address account) public onlyOwner {
        require(!_whitelist[account], "Account is already whitelisted");
        _whitelist[account] = true;
        _whitelistedAddresses.push(account);
    }

    function removeFromNoTaxWhitelist(address account) public onlyOwner {
        require(_whitelist[account], "Account is not whitelisted");
        _whitelist[account] = false;
        // Remove account from the _whitelistedAddresses array
        for (uint256 i = 0; i < _whitelistedAddresses.length; i++) {
            if (_whitelistedAddresses[i] == account) {
                _whitelistedAddresses[i] = _whitelistedAddresses[_whitelistedAddresses.length - 1];
                _whitelistedAddresses.pop();
                break;
            }
        }
    }

    function getNoTaxWhitelistedWallets() public view returns (address[] memory) {
        return _whitelistedAddresses;
    }

    function decimals() public view virtual override returns (uint8) {
        return 2;
    }
}

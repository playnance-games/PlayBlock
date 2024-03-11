// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract PBG is ERC20 , ERC20Burnable, ERC20Pausable, Ownable {

    //Events
    event TokenRecovered(address tokenAddress, uint256 tokenAmount);

    //Constructor
    constructor(address initialOwner) ERC20("PlayBlock", "PBG") Ownable(initialOwner){
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

    function _update(address from, address to, uint256 value) internal override(ERC20,ERC20Pausable) {
        super._update(from, to, value);
    }

    function recoverToken(address tokenAddress, uint256 tokenAmount) public onlyOwner {
        require(tokenAddress != address(this), "Cannot recover this token type");
        IERC20(tokenAddress).transfer(owner(), tokenAmount);
        emit TokenRecovered(tokenAddress, tokenAmount);
    }
}

# Playnance Gas Token (PBG)

### **Playnance Gas Token Specification**

#### Overview:

The PBG token is the designated utility token of the Playnance chain, crafted to facilitate transaction fee payments and operational expenditures within the ecosystem. With precision set at 18 decimals, PBG aligns with established ERC-20 token standards, ensuring compatibility and ease of calculation. This document delineates the governance features and operational functionalities of the PBG token, emphasizing its role in maintaining network efficiency, security, and user asset safety.

#### Token Details:

* **Token Name:** Playnance Gas Token
* **Token Symbol:** PBG
* **Decimals:** 18
* **Blockchain:** Playnance (ChainID: 1829)

#### Core Functionalities:

**Minting:**

* **Capability:** Minting of PBG tokens is an exclusive privilege of the Playnance chain's governance body, facilitating supply modulation following network demands and growth.
* **Purpose:** To provide a mechanism for increasing the token supply, enabling scalability and adaptability of network operations.
* **Documentation Reference:** See OpenZeppelin ERC20

  ```javascript
  _mint
  ```

   function documentation [here](https://docs.openzeppelin.com/contracts/3.x/api/token/erc20#ERC20-_mint-address-uint256-).

**Burning:**

* **Capability:** Reserved solely for the Playnance chain's governance authority, this feature permits the burning of PBG tokens, including those held by external addresses. It serves as a corrective measure against network abuse, allowing for the reduction of circulating supply to counteract spamming or malicious activities.
* **Purpose:** To deter network spam and misuse by providing a mechanism for token removal.
* **Documentation Reference:** Details on the burning process can be found in the OpenZeppelin ERC20Burnable documentation [here](https://docs.openzeppelin.com/contracts/3.x/api/token/erc20#ERC20Burnable).

**Pausing and Unpausing:**

* **Capability:** The governance authority of the Playnance chain can pause and unpause PBG token transactions as a rapid response measure to emergent threats or vulnerabilities, effectively halting token transfers during critical situations.
* **Purpose:** To safeguard the network and token holder assets under emergency circumstances by temporarily freezing token movements.
* **Documentation Reference:** Further information on the pausing functionality is available in the OpenZeppelin ERC20Pausable documentation [here](https://docs.openzeppelin.com/contracts/3.x/api/token/erc20#ERC20Pausable).

**Token Recovery:**

* **Capability:** A recovery feature enables the retrieval of non-PBG assets accidentally sent to the PBG token contract, exclusively accessible to the Playnance chain's governance body.
* **Purpose:** To prevent the irrevocable loss of user assets due to mistaken transfers, ensuring the possibility of reclaiming tokens erroneously dispatched to the contract address.

#### Governance and Operational Integrity:

The PBG token integrates several governance protocols, entrusting key operational controls — including minting, burning, and pausing capabilities — to the Playnance chain's administrative entities. This centralization of power is instituted to bolster network security, enhance operational flexibility, and ensure rapid response capabilities to protect the ecosystem's integrity and participant interests.

Token governance is advised to implement these controls with a commitment to transparency, fairness, and accountability, fostering a stable and trustful environment for all participants in the Playnance ecosystem.

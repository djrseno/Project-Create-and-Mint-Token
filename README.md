# DJRSToken Smart Contract

A custom ERC-20 token with mint and burn functionalities implemented using OpenZeppelin's libraries. This contract demonstrates basic token management, including total supply adjustments, ownership control, and secure minting and burning mechanisms.

## Description

The DJRSToken contract is an ERC-20 token that allows controlled token creation (minting) and destruction (burning). The contract includes:
* A predefined initial supply minted to the deployer's address.
* The ability for the contract owner to mint additional tokens.
* A burn function for token holders to destroy their tokens and reduce the total supply.
  
The contract uses OpenZeppelin's ERC20 and Ownable modules for a secure, standards-compliant implementation.

## Getting Started

### Installing

1. Set Up the Environment:
* Use an IDE like Remix or a local Solidity development environment (e.g., Hardhat or Truffle).
* Ensure your Solidity compiler is set to version ^0.8.13 or compatible.

2. Download the Code:
* Copy the Solidity code and paste it into your IDE.
  
3. Modifications:
* You can adjust the token's name, symbol, or initial supply in the constructor function.

### Executing program

1. Deploy the contract:
* Compile the smart contract using a Solidity IDE or your local compiler.
* Deploy it on a test network (e.g., Ganache, Ethereum Testnets like Goerli or Sepolia).

2. Mint tokens:
* Only the owner of the contract can mint tokens using the mint function.

3. Burn tokens:
* Any token holder can burn tokens from their balance using the burn function.

## Help

Common issues:
* Minting Restrictions: Only the owner of the contract can call the mint function. Ensure you are the owner when attempting to mint.
* Burning Tokens: Ensure your address has enough tokens before calling the burn function. The function will revert if the balance is insufficient.
  
If your program contains helper functions or error-handling mechanisms, you can check the documentation within the IDE for more information.

## Authors

Daniel Jude Seno - Contact via [GitHub](https://github.com/djrseno)

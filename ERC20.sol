// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";

contract DJRSToken is ERC20, Ownable {
    uint8 private constant _tokenDecimals = 18;
    uint256 private constant _initialSupply = 500 * 10**uint256(_tokenDecimals);

    constructor() ERC20("JudeToken", "JTK") {
        _mint(msg.sender, _initialSupply); 
    }

    function mint(address recipient, uint256 amount) external onlyOwner {
        _mint(recipient, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Custom transfer function
    function transferTokens(address recipient, uint256 amount) external returns (bool) {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance to transfer");
        return transfer(recipient, amount);
    }

}

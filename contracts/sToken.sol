// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

// add inheritance
contract sToken is ERC20, Ownable, ERC20Burnable {
    // insert constructor function here
     constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
    }
    // insert mint function here
     function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
    // insert burn function here
     function burn(address from, uint256 amount) external onlyOwner {
        _burn(from, amount);
    }
}

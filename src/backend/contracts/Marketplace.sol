// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract Marketplace is ReentrancyGuard {
    // State Variables
    address payable public immutable feeAccount; // the account that receives fee
    uint256 public immutable feePercent; // the fee percentage on sales

    constructor(uint256 _feePrecent) public {
        feeAccount = payable(msg.sender);
        feePercent = _feePrecent;
    }
}

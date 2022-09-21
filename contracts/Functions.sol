// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Functions {
  constructor() {}

  // Pure Function
  function getName() public pure returns(string memory) {
    return "Frank";
  }

  uint256 x = 100;

  // View Function
  function multiplyNumber() public view returns(uint256) {
    return x*2;
  }

}
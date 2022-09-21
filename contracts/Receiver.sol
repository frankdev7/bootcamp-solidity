// SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

contract Receiver {
  event log(uint amount, uint gas);

  receive() external payable {
    emit log(address(this).balance, gasleft());
  }

}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ReceiveFallback {

  event log(string _name, address _sender, uint amount, bytes data);

  fallback() external payable {
    emit log("fallback", msg.sender, msg.value, msg.data);
  }

  receive() external payable {
    emit log("receive", msg.sender, msg.value, "");
  }

}
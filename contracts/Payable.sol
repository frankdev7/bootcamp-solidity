// SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

contract Payable {
  
  constructor () {}

  receive() external payable {}

  // Events
  event sendStatus(bool);
  event callStatus(bool, bytes);

  // Transfer via transfer method
  function sendViaTransfer(address payable _to) public payable {
    _to.transfer(1 ether);
  }

  // Transfer via send method
  function sendViaSend(address payable _to) public payable {
    bool sent = _to.send(1 ether);
    emit sendStatus(sent);
    require(sent == true  , "transfer failed");
  }

  // Transfer via call method
  function sendViaCall(address payable _to) public payable {
    (bool success, bytes memory data ) = _to.call{ value: 1 ether }("");
    emit callStatus(success, data);
    require(success == true, "transfer failed");
  }

}
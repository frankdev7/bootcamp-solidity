// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Instance.sol";

contract FactorySC {
    mapping(address => address) public personal_contract;

    function Factory() public {
        address sc_instance_address = address(
            new Instance(msg.sender, address(this))
        );
        personal_contract[msg.sender] = sc_instance_address;
    }
}

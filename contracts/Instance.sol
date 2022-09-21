// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Instance {
    Owner public me;

    struct Owner {
        address _owner;
        address _sc_parent;
    }

    constructor(address _owner, address _sc_parent) {
        me._owner = _owner;
        me._sc_parent = _sc_parent;
    }
}

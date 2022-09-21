// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Food.sol";

contract Hamburger is Food {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Cook hamburger
    function doHamburger(string memory _ingredients, uint256 _quantity)
        external
    {
        require(_quantity < 5, "not than 5");
        newMenu("Hamburger", _ingredients);
    }

    // Modifier owner
    modifier onlyOwner() {
        require(owner == msg.sender, "forbidden");
        _;
    }

    function hashNumber(uint256 _number)
        public
        view
        onlyOwner
        returns (bytes32)
    {
        return keccak256(abi.encodePacked(_number));
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Food {
    struct dinnerPlate {
        string name;
        string ingredients;
    }

    dinnerPlate[] menu;

    function newMenu(string memory _name, string memory _ingredients) internal {
        menu.push(dinnerPlate(_name, _ingredients));
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Conditional {
    // Sum of numbers
    function sumOfNumbers(uint _number) public pure returns (uint256) {
        uint256 aux_sum = 0;

        for (uint256 i = _number; i < (10 + _number); i++) {
            aux_sum = aux_sum + i;
        }
        return aux_sum;
    }

    // Sum or Sub
    function operation(
        string memory _operation,
        uint256 a,
        uint256 b
    ) public pure returns (uint256) {
        bytes32 hash_operation = keccak256(abi.encodePacked(_operation));

        if (hash_operation == keccak256(abi.encodePacked("sum"))) {
            return a + b;
        } else {
            return a - b;
        }
    }
}

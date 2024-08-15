// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.25;

/// @title Entry library
/// @notice A library that contains utility functions
library EntryLib {
    /// @notice A utility function that adds two numbers
    /// @param a The first number
    /// @param b The second number
    /// @return The sum of the two numbers
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}

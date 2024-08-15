// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.25;

// Test
import { Entry_Test } from "@test/unit/entry/Entry.t.sol";

// @notice A test contract for testing the add function
contract Entry_add is Entry_Test {
    /*//////////////////////////////////////////////////////////////
                                 TESTS
    //////////////////////////////////////////////////////////////*/

    function test_add() public {
        uint256 a = 1;
        uint256 b = 2;
        uint256 c = entry.add(a, b);
        assertEq(c, 3);
    }
}

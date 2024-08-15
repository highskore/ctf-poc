// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.25;

// Test
import { Entry_Test } from "@test/unit/entry/Entry.t.sol";

// @notice A test contract for testing the add function
contract Entry_add is Entry_Test {
    /*//////////////////////////////////////////////////////////////
                                 TESTS
    //////////////////////////////////////////////////////////////*/

    function test_check_calldata() public {
        bytes memory payload = abi.encodeWithSelector(entry.add.selector, 1, 2);
        (bool success, bytes memory retData) =
            extraSafeExternalCall.callContractSafe{ gas: 20_000 }(payload, address(entry), 5000);
        assertTrue(success, "Call failed");
        uint256 result = abi.decode(retData, (uint256));
        assertEq(result, 3, "Incorrect result");
    }
}

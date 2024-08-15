// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.25;

// Contracts
import { Entry } from "@src/Entry.sol";
import { ExtraSafeExternalCall } from "@src/ExtraSafeExternalCall.sol";

// Test
import { Base_Test } from "@test/Base.t.sol";

// @notice A base test contract for the Entry contract
contract Entry_Test is Base_Test {
    /*//////////////////////////////////////////////////////////////
                               VARIABLES
    //////////////////////////////////////////////////////////////*/

    Entry entry;
    ExtraSafeExternalCall extraSafeExternalCall;

    /*//////////////////////////////////////////////////////////////
                                 SETUP
    //////////////////////////////////////////////////////////////*/

    function setUp() public virtual override {
        super.setUp();
        entry = new Entry(1);
        extraSafeExternalCall = new ExtraSafeExternalCall();
    }
}

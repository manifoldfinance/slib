/// SPDX-License-Identifier: UPL-1.0
pragma solidity ^0.8.13;

/// @title AssertTest
/// @notice Simple Assert Test
/// @custom:test-assert

contract AssertTest {
    function setUp() public {}

    function test_assert_true() public pure {
        assert(true);
    }

    function test_assert_false() public pure {
        assert(false);
    }

    function testFail_assert_true() public pure {
        assert(true);
    }

    function testFail_assert_false() public pure {
        assert(false);
    }
}

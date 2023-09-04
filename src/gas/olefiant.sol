/// SPDX-License-Identifier: AGPL-3.0-only

pragma solidity >=0.5.0;

contract Hevm {
    function warp(uint) public;
}
contract Olefiant {

/**!
      oléfiant

          Returns the exact value of the gas provided
          in any call to it. It must be writtten in bytecode directly as the solidity
          function dispatch code already consumes gas, so any solidity implementation
          will always return an incorrect result.


; ----------------------------------------------------------

    Bytecode

; ----------------------------------------------------------

    0x5a  0x60   0x02  0x01  0x60   0x00  0x52    0x60   0x20  0x60   0x00  0xf3
    GAS   PUSH1  2     ADD   PUSH1  0     MSTORE  PUSH1  32    PUSH1  0     RETURN

; ----------------------------------------------------------

    Initcode

; ----------------------------------------------------------

    0x6b    0x5a  0x60  0x02  0x01  0x60  0x00  0x52  0x60  0x20  0x60  0x20  0x60  0x00  0xf3
    PUSH12
    0x60   0x00  0x52    0x60   0x20  0x60   0x14  0xf3
    PUSH1  0     MSTORE  PUSH1  32    PUSH1  20    RETURN

; ----------------------------------------------------------

!*/


    /// @dev Returns the exact value of the gas provided in any call to it.
    function build() public returns (address out) {
      assembly {
        mstore(mload(0x40), 0x6b5a60020160005260206000f360005260206014f3)
        out := create(0, add(11, mload(0x40)), 21)
      }
    }
}

//#src: olefiant.sol:0
// 6080604052348015600f57600080fd5b50336000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055506000809054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166000809054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16141561009

/// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.5.0 <0.9.0;
contract OlefiantFactory {
    /*
    Bytecode:
    ---
    0x5a GAS
    0x60 PUSH1
    0x02 2
    0x01 ADD
    0x60 PUSH1
    0x00 0
    0x52 MSTORE
    0x60 PUSH1
    0x20 32
    0x60 PUSH1
    0x00 0
    0xf3 RETURN
    Initcode:
    ---
    0x6b PUSH12
    0x5a
    0x60
    0x02
    0x01
    0x60
    0x00
    0x52
    0x60
    0x20
    0x60
    0x00
    0xf3
    0x60 PUSH1
    0x00 0
    0x52 MSTORE
    0x60 PUSH1
    0x20 32
    0x60 PUSH1
    0x14 20
    0xf3 RETURN
    */


/// @dev Returns the exact value of the gas provided in any call to it.
    function build() public returns (address out) {
      assembly {
        mstore(mload(0x40), 0x6b5a60020160005260206000f360005260206014f3)
        out := create(0, add(11, mload(0x40)), 21)
      }
    }
}
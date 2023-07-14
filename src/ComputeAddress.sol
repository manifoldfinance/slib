 
pragma solidity ^0.4.25;
 
contract ComputeContractAddress
{
    function addressFrom(address _origin, uint _nonce) public pure returns (address) {
        bytes memory data;
        if(_nonce == 0x00)          data = abi.encodePacked(byte(0xd6), byte(0x94), _origin, byte(0x80));
        else if(_nonce <= 0x7f)     data = abi.encodePacked(byte(0xd6), byte(0x94), _origin, byte(_nonce));
        else if(_nonce <= 0xff)     data = abi.encodePacked(byte(0xd7), byte(0x94), _origin, byte(0x81), uint8(_nonce));
        else if(_nonce <= 0xffff)   data = abi.encodePacked(byte(0xd8), byte(0x94), _origin, byte(0x82), uint16(_nonce));
        else if(_nonce <= 0xffffff) data = abi.encodePacked(byte(0xd9), byte(0x94), _origin, byte(0x83), uint24(_nonce));
        else                        data = abi.encodePacked(byte(0xda), byte(0x94), _origin, byte(0x84), uint32(_nonce));
            return address(keccak256(data));
    }
}

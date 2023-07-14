// SPDX-License-Identifier: MIT 
 
pragma solidity >=0.6.0 <0.7.0;
 
 
contract AcknowledgeConnection {
	string[] public ackMessages ;
 
	
	function ack (string memory ackMsg)public
	{
		ackMessages.push(ackMsg);
	}
 
}

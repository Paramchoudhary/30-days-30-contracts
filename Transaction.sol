// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Transactions {

event SenderLogger(address);
event ValueLogger(uint);
address private owner;

modifier isOwner{
    require(owner==msg.sender);
    _;
}
modifier validValue{
    assert(msg.value >= 1 ether);
    _;
}
constructor() public{
    owner = msg.sender;
}
 function payeth() public payable isOwner validValue {
        emit SenderLogger(msg.sender);
        emit ValueLogger(msg.value);
    }

}

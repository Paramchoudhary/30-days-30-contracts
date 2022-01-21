
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;
contract PayEth {
uint value;

function deposit() public payable{

}
function transferEth(address payable reciever , uint _value) public payable{
    _value = msg.value;
reciever = payable(msg.sender);
reciever.transfer(address(this).balance);
}


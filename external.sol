// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ExternalContract{
function externalCall(string calldata x) external returns (uint){
    return 123;
}
function publicCall(string memory x) public returns(uint){
    return 123;
}


}

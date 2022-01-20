// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;
contract Sucidal {
   address owner;
   function suicidea() public returns (address){
   require(owner== msg.sender);
   selfdestruct(owner);

   }
}
contract C is Sucidal{
    address owner;
    function c() {
        owner =msg.sender;
    }
}

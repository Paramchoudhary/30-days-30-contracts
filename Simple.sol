// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Bank  {
uint public bal;
constructor(uint  _bal) public payable{
    bal = _bal;
}
  function getBalances() view public returns(uint){
      return bal;
  }  

 function deposit(uint amt) public {
     bal = bal + amt;

 }
 function withdraw(uint amt) public{
bal = bal - amt;
 }
}

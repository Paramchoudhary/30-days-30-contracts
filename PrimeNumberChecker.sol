// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract PrimeNumberChecker {

function isPrime(uint n) public pure returns(bool){
  for(uint i = 2;i<n;i++){
    if(n % i ==0){
    return false;
    }
    else{
      return true;
    }
  }
}
}

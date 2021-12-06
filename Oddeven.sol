// SPDX-License-Identifier: MIT
pragma solidity 0.8.7 ;

contract OddEven{

  function oddEven(uint x) public pure returns(bool){
    if(x%2==0){
    return true;
    }
    else{
        return false;
    }
    
    }
}

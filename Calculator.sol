// SPDX-License-Identifier: MIT
pragma solidity 0.8.7 ;

contract Calculator{
//create two variable for input and output
uint x;
uint y;
    function setInput(uint a, uint b) public {
        x =a;
        y =b;

    }
    function sub() public returns(uint){
        if(x>y){
            return x-y;
        }
        else{
            return y-x;
        }
    }
     function divide() public view returns(uint){
        return x/y;
    }
     function multiply() public view returns(uint){
        return x*y;
    }
     function modulus() public view returns(uint){
        return x%y;
    }
}

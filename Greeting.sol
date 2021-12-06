// SPDX-License-Identifier: MIT
pragma solidity 0.8.7 ;

contract Greeting{

    function greet(string memory name) public pure returns(string memory) {
      
        bytes memory b; // local variable 

b = abi.encodePacked("How are you !");
b = abi.encodePacked(b, name);

string memory s = string(b);
return s;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity 0.8.7 ;

contract Helloworld{

  uint[]  data; 
  
    // Defining a function 
    // to demonstrate 'For loop'
    function loop(
    ) public returns(uint[] memory){
    for(uint i=1; i<9; i++){
        uint res = 2 * i;
        data.push(res);
     }
      return data;
    }

}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Lifecycle {
  //create a function
   function ageChecker(uint age) public pure returns(string memory){
   if(age<=13){
       return "kid";
   }else if(age<=18){
       return "boy";
   }else if(age<= 40){
       return "Young";
   }else if(age>=40){
       return "Old Man";
   }


   }


}
//created by param  choudhary

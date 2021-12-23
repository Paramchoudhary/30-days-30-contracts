// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract LeapYearFinder
{


function leapyear(uint year) public pure returns(bool){
if( year % 4 == 0){
  return false;
}
  if( year % 100 == 0){
    return true;
  }
  if( year % 400 == 0){
  return false;
}

      }   
}

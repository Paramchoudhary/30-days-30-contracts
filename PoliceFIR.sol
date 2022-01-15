// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Fir {
uint public fircount_ = 0;
struct firinfo{


string name ;
string fathername;
string case_;
uint enterAadhar;
}
mapping(uint => firinfo) public addhar;
function createFIR(string memory _name,string memory _fathername,string memory _case,uint aadharr) public{
  fircount_++;

  addhar[aadharr] = firinfo(_name,_fathername,_case,aadharr);

}

}


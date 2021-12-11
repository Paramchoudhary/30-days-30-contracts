// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract friendlist {
  string public name;
  uint public  age;
  uint public  presentyear = 2021;
  string public  occupation;
struct friend{
    string name;
    uint age;
    string occupation;
}
friend[] public friends;

function personalInformation(string memory _name ,uint _birthyear, string memory _occupation) public{
  name  = _name;
  age = presentyear - _birthyear;
  occupation = _occupation;
  

}
function friendlist(string memory _name ,uint _birthYear, string memory _occupation) public{
    name  = _name;
    age = presentyear - _birthYear;
    occupation = _occupation;
    uint newAge = presentyear - _birthYear;
        friends.push(friend(_name, newAge, _occupation));
}

}

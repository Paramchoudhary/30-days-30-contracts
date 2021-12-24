// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Owner {

address private _owner;
event OwnerSet(address owner);
 function setOwner(address ownerAddress) public {
_owner = ownerAddress;
emit OwnerSet(_owner);
   
 }
function getCurrentOwner() public view returns(address){
    return _owner;
}

}
 

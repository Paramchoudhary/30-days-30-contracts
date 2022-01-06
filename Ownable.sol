// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Ownable{
address private owner_;

event OwnershipTransferred(
    address indexed previousOwner,
    address indexed newOwner
);
function Ownable() public{
    owner_ = msg.sender;
}
function owner() public view returns(address){
return owner_;
}
modifier onlyOwner(){
    require(msg.sender==owner_);
    _;
}
function transferOwnership(address _newOwner) public onlyOwner{
    
}
function _transferOwnership(address _newOwner) public
{
require(_newOwner != address(0));
emit OwnershipTransferred(owner_,_newOwner);
owner_ = _newOwner;


}

}

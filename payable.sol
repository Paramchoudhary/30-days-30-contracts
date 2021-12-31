pragma solidity ^0.5.8;

contract Payable  {

    mapping (address => uint) private balances;
    address public owner;

 
    constructor() public payable {
        require(msg.value > 3 wei, "3 wei initial amount required");
        
        owner = msg.sender;
       
    }


    function balance() public view returns (uint) {
        return balances[msg.sender];
    }

 
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SmartBank {
uint totalContractBalance = 0;
function getContractBlance() public view returns(uint){
return totalContractBalance;

}
mapping(address => uint) balances;
mapping(address => uint) depositTimestamps;

function addbalance() public payable{
    balances[msg.sender] = msg.value;
    totalContractBalance = totalContractBalance + msg.value;
    depositTimestamps[msg.sender] = block.timestamp;
}
function getbalance(address userAddress) public view returns(uint){
  uint principal = balances[userAddress];
  uint timeElapsed = block.timestamp - depositTimestamps[userAddress];
  return principal + uint((principal * 7 * timeElapsed)/(100*365*24*60*60)) + 1;

}
function withdraw() public payable{
address payable withdrawto = payable(msg.sender);
uint amountToTransfer = getbalance(msg.sender);
withdrawto.transfer(amountToTransfer);
totalContractBalance = totalContractBalance - amountToTransfer;
balances[msg.sender] = 0;

}
function addMoneytoContract() public payable{

  totalContractBalance += msg.value;
}


}


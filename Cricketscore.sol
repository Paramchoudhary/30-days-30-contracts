// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Cricket{
uint public player1runs = 0;
uint public ballcount = 0;
uint public over;
function single() public{
    
    ballcount++;
    over = ballcount/6;
player1runs += 1;


}
function four() public{
    ballcount++;
    over = ballcount/6;
player1runs += 4;

}
function six() public{
    
    ballcount++;
    over = ballcount/6;
player1runs += 6;


}

}


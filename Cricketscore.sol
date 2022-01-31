// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Cricket{
uint public player1runs = 0;
uint public ballcount = 0;
uint public over;
//single run
function single() public{
    
    ballcount++;
    over = ballcount/6;
player1runs += 1;


}
//four run
function four() public{
    ballcount++;
    over = ballcount/6;
player1runs += 4;

}
//six run
function six() public{
    
    ballcount++;
    over = ballcount/6;
player1runs += 6;


}

}


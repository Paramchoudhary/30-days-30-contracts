// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract TestThrow {
 function testAssert() public pure{
 assert(1==2);
 }
function testRequire() public pure{
    require(1==2);
}
function testRevert() public pure {
    revert();
}

}

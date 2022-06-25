// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract PrimeNumberChecker {
    function prime(uint256 n) public pure returns (bool) {
        if (n <= 1) {
            return false;
        }
        for (uint256 i = 2; i < n; i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
}

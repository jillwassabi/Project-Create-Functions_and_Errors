// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Calculator {
    // Addition
    function getSum(uint256 firstNumber, uint256 secondNumber) public pure returns (uint256) {
        uint256 sum = firstNumber + secondNumber;
        return sum; 
    }

    // Subtraction
    function getDifference(uint256 minuend, uint256 subtrahend) public pure returns (uint256) {
        if (subtrahend > minuend) {
            revert("Operation results in subtraction underflow. Try again."); // Prevent subtraction that results in negative number
        }
        
        uint difference = minuend - subtrahend;
        return difference;
    }

    // Multiplication
    function getProduct(uint256 firstNumber, uint256 secondNumber) public pure returns (uint256) {
        uint256 product = firstNumber * secondNumber;
        assert(product / firstNumber == secondNumber); // Check for multiplication overflow
        return product;
    }

    // Division
    function getQuotient(uint256 dividend, uint256 divisor) public pure returns (uint256) {
        require(divisor != 0, "Division by zero is not allowed. Please input a number greater than 0."); // Check for division by zero
        uint quotient = dividend / divisor;
        return quotient;
    }
}

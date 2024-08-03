# Project-Create-Functions_and_Errors
It contains a Solidity smart contract, SmartContract.sol, which implements the require(), assert(), and revert() statements. The require() statement functions as an input validator. Meanwhile, the assert() statement is used to detect internal errors, whereas the revert() statement is utilized to revert or undo state changes.

# Functions
Generally, SmartContract.sol is a smart contract for a basic calculator. It allows users to add, subtract, multiply, and divide two numbers. SmartContract.sol provides the following features:

a function getSum() that accepts two unsigned integers and computes for their sum.
a function getDifference() that accepts two unsigned integers and computes for their difference. When the subtrahend > minuend, it reverts to the initial state.
a function getProduct() that accepts two unsigned integers and calculates their product. It also uses the assert() statement to check for multiplication overflow.
a function getQuotient() that accepts two unsigned integers and gets their quotient. This function requires that the divisor is not equal to zero, lest an error message will prompt.

# Deployment
To deploy this contract, use any Ethereum development environment such as Remix, Truffle, or Hardhat. Ensure that your environment is configured with Solidity compiler version ^0.8.1.

# Usage
o execute the SmartContract.sol, one may use Remix IDE. The following statements provide a step-by-step guide on how to properly run and interact with the project using Remix IDE.

Open Remix IDE
Create a new file entitled SmartContract.sol, then copy and paste the provided code.
On the left sidebar, select Solidity Compiler -> Compile SmartContract.sol. [NOTE: Compiler version should be at least 0.8.18].
On the left sidebar, select Deploy & Run Transactions -> Deploy. Set the environment that you prefer, yet I used the default one.
Interact with the contract by entering inputs across the getSum(), getDifference(), getProduct(), and getQuotient(). Inputs must be integers separated by commas. (Ex: 2,3).


# Author
Jill Samantha G. Alday

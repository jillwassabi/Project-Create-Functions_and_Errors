# Project-Create-Functions_and_Errors
This Solidity program showcases error handling mechanisms using require(), assert(), and revert() statements. 
It provides practical examples to ensure the correctness and security of smart contracts on the Ethereum blockchain.

# Functions
updateValue(uint _newValue)
Updates the storedValue state variable.

multiplyValues(uint _firstNum, uint _secondNum)
Multiplies two numbers, where the first number must be non-zero and the second number must be even. 
Returns the product of these two numbers.

# Deployment
To deploy this contract, use any Ethereum development environment such as Remix, Truffle, or Hardhat. Ensure that your environment is configured with Solidity compiler version ^0.8.1.

# Usage
Updating the Stored Value
Invoke the updateValue function with a new value greater than 1. 
The function will update the storedValue state variable if the new value is different from the current stored value.

# Multiplying Values
Invoke the multiplyValues function with two numbers. 
The first number must be non-zero, and the second number must be even. 
The function returns the product of these two numbers.

# Running the Program
To run this program using Remix, an online Solidity IDE, follow these steps:

Go to the Remix website.
Create a new file by clicking the "+" icon in the left-hand sidebar.
Copy and paste the Solidity code into the file.
solidity
Copy code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract FunctionsAndErrors {
    uint public storedValue;

    function updateValue(uint _newValue) public {
        require(_newValue > 1, "Value must be greater than 1");
        assert(_newValue != storedValue);
        storedValue = _newValue;
    }

    function multiplyValues(uint _firstNum, uint _secondNum) public pure returns (uint) {
        require(_firstNum != 0, "First Number cannot be zero");
        if(_secondNum % 2 != 0) {
            revert("Second number must be an Even Number");
        }
        return _firstNum * _secondNum;
    }
}

Compiling the Code

Click on the "Solidity Compiler" tab in the left-hand sidebar.
Ensure the "Compiler" option is set to a compatible version (e.g., 0.8.1).
Click on the "Compile FunctionsAndErrors.sol" button.
Deploying the Contract

Click on the "Deploy & Run Transactions" tab in the left-hand sidebar.
Select the FunctionsAndErrors contract from the dropdown menu.
Click on the "Deploy" button.
Interacting with the Contract

Set a Value: Use the updateValue function with an appropriate input to set a new value.
Multiply Values: Use the multiplyValues function with two numbers, ensuring the conditions are met.

# Author
Jill Samantha G. Alday

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract FunctionsAndErrors {

    uint public storedValue;

    function updateValue(uint _newValue) public {
        require(_newValue > 1, "Value must be greater than 1");

        assert(_newValue != storedValue);

        storedValue = _newValue;   
    }

    function multiplyValues(uint _firstNum, uint _secondNum) public pure returns (uint){
        require(_firstNum != 0, "First Number cannot be zero");
        if(_secondNum % 2 != 0){
            revert("Second number must be an Even Number");
        }
        return _firstNum * _secondNum;
    }
}

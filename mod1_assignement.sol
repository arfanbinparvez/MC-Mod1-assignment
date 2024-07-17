
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ErrorHandlingExample {
    uint256 public value;

    // Function to set a value with require statement
    function setValueWithRequire(uint256 _value) public {
        require(_value > 0, "Value must be greater than 0");
        value = _value;
    }

    // Function to set a value with assert statement
    function setValueWithAssert(uint256 _value) public {
        value = _value;
        // This assert statement should never fail if the contract works correctly
        assert(value == _value);
    }

    // Function to demonstrate revert statement
    function setValueWithRevert(uint256 _value) public {
        if (_value == 0) {
            revert("Value cannot be 0");
        }
        value = _value;
    }

    // Function to demonstrate all three statements
    function setValueWithAll(uint256 _value) public {
        require(_value > 0, "Value must be greater than 0");
        value = _value;
        assert(value == _value);
        if (_value == 1) {
            revert("Value cannot be 1");
        }
    }
}

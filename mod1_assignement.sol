// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ErrorHandlingExample {
    uint256 public value;

    function setValueWithRequire(uint256 _value) public {
        require(_value > 10, "Value must be greater than 10");
        value = _value;
    }

    function setValueWithAssert(uint256 _value) public {
        value = _value * 2; // intentionally introduced an error
        assert(value == _value); // this assert should fail
    }

    function setValueWithRevert(uint256 _value) public {
        if (_value < 5) {
            revert("Value must be 5 or greater");
        }
        value = _value;
    }
}

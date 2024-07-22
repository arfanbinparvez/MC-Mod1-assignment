# ErrorHandlingExample Smart Contract

## Overview
The `ErrorHandlingExample` smart contract demonstrates the usage of error handling mechanisms in Solidity. It includes three functions that utilize `require`, `assert`, and `revert` statements to handle errors and ensure the contract behaves as expected.

## Prerequisites
- REMIX IDE

### Interacting with the Contract

#### Setting a Value with `require`
The `setValueWithRequire` function sets the value if the provided value is greater than 10.
```solidity
function setValueWithRequire(uint256 _value) public {
    require(_value > 10, "Value must be greater than 10");
    value = _value;
}
```

#### Setting a Value with `assert`
The `setValueWithAssert` function demonstrates the use of the `assert` statement. It intentionally introduces an error to showcase the `assert` statement's behavior.
```solidity
function setValueWithAssert(uint256 _value) public {
    value = _value * 2; // intentionally introduce an error
    assert(value == _value); // this assert should fail
}


#### Setting a Value with `revert`
The `setValueWithRevert` function sets the value if the provided value is 5 or greater. Otherwise, it reverts with a custom error message.
```solidity
function setValueWithRevert(uint256 _value) public {
    if (_value < 5) {
        revert("Value must be 5 or greater");
    }
    value = _value;
}

## Author
Arfan Mohd

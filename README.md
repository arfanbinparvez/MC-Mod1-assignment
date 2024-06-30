
## Contract Functions

### 1. `setValueWithRequire(uint256 _value)`

Sets the value of the state variable `value` using a `require()` statement to ensure the input `_value` is greater than 0.

```solidity
function setValueWithRequire(uint256 _value) public {
    require(_value > 0, "Value must be greater than 0");
    value = _value;
}
```

- **Input**: `_value` (uint256) - The value to set.
- **Behavior**: Reverts the transaction with the message "Value must be greater than 0" if `_value` is not greater than 0.

### 2. `setValueWithAssert(uint256 _value)`

Sets the value of the state variable `value` and uses an `assert()` statement to ensure the assignment was successful.

```solidity
function setValueWithAssert(uint256 _value) public {
    value = _value;
    assert(value == _value);
}
```

- **Input**: `_value` (uint256) - The value to set.
- **Behavior**: Uses `assert()` to check that `value` is equal to `_value`. Reverts the transaction if the condition fails.

### 3. `setValueWithRevert(uint256 _value)`

Demonstrates the use of the `revert()` statement. Sets the value of `value` only if `_value` is not 0.

```solidity
function setValueWithRevert(uint256 _value) public {
    if (_value == 0) {
        revert("Value cannot be 0");
    }
    value = _value;
}
```

- **Input**: `_value` (uint256) - The value to set.
- **Behavior**: Reverts the transaction with the message "Value cannot be 0" if `_value` is 0.

### 4. `setValueWithAll(uint256 _value)`

Combines the use of `require()`, `assert()`, and `revert()` statements to demonstrate their usage in a single function.

```solidity
function setValueWithAll(uint256 _value) public {
    require(_value > 0, "Value must be greater than 0");
    value = _value;
    assert(value == _value);
    if (_value == 1) {
        revert("Value cannot be 1");
    }
}
```

- **Input**: `_value` (uint256) - The value to set.
- **Behavior**: 
  - Uses `require()` to ensure `_value` is greater than 0.
  - Uses `assert()` to ensure `value` is set correctly.
  - Uses `revert()` to revert the transaction if `_value` is 1

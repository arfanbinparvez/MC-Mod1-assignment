# ErrorHandlingExample Smart Contract

## Introduction

The `ErrorHandlingExample` smart contract is a simple yet effective demonstration of how to handle errors in Solidity. It allows you to mint (create) and burn (destroy) tokens while making sure that certain conditions are met to avoid problems like overflows and underflows.

## Key Features

- **Mint Tokens**: You can create tokens and add them to a specified address, but the amount must exceed a certain threshold.
- **Burn Tokens**: You can remove tokens from a specified address, provided the amount meets a minimum requirement.
- **Error Handling**: The contract uses various methods to ensure that transactions are processed correctly and to handle unexpected situations.

## Functions

### `mint(address to, uint256 amount)`

This function allows you to create new tokens and add them to the given address.

- **Parameters:**
  - `to`: The recipient's address where the tokens will be sent.
  - `amount`: The number of tokens to create. This must be greater than 10.

- **Events:**
  - `Mint(address indexed to, uint256 amount)`: Emitted when new tokens are successfully created.

- **Error Handling:**
  - If the amount is 10 or less, the transaction will fail with the message "Mint amount must be greater than 10".
  - The contract checks to ensure that the total supply of tokens does not overflow.

### `burn(address from, uint256 amount)`

This function allows you to remove tokens from a specified address.

- **Parameters:**
  - `from`: The address from which tokens will be burned.
  - `amount`: The number of tokens to remove. This must be more than 5.

- **Events:**
  - `Burn(address indexed from, uint256 amount)`: Emitted when tokens are successfully removed.

- **Error Handling:**
  - If the amount is 5 or less, the transaction will fail with the message "Burn amount must be greater than 5".
  - The contract checks to ensure that the total supply of tokens does not underflow.
  - If burning results in a negative balance for the address, the transaction will be reversed with the message "Burn resulted in negative balance".

## How to Deploy

1. Go to [Remix IDE](https://remix.ethereum.org/).
2. Create a new file and paste the contract code into it.
3. Compile the contract using the Solidity compiler.
4. Deploy the contract to your chosen Ethereum network.

## Using the Contract

### Minting Tokens

1. Call the `mint` function with the recipient's address and the amount of tokens to create.
2. Make sure the amount is greater than 10 to avoid any errors.

### Burning Tokens

1. Call the `burn` function with the address from which you want to remove tokens and the amount to burn.
2. Ensure the amount is greater than 5 to prevent errors.
3. Check that the burn does not result in a negative balance to avoid transaction reversal.


---
## Author
Arfan Mohammad

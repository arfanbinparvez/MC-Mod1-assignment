// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ErrorHandlingExample {
    uint256 public value;
    mapping(address => uint256) public balances;
    uint256 public totalSupply;

    event Mint(address indexed to, uint256 amount);
    event Burn(address indexed from, uint256 amount);

    function mint(address to, uint256 amount) public {
        require(amount > 10, "Mint amount must be greater than 10");

        balances[to] += amount;
        totalSupply += amount; 

        assert(totalSupply >= amount); // overflow check

        emit Mint(to, amount);
    }

    function burn(address from, uint256 amount) public {
        require(amount > 5, "Burn amount must be greater than 5");

        balances[from] -= amount;
        totalSupply -= amount;

        assert(totalSupply >= 0); // underflow check
        if (balances[from] < 0) {
            revert("Burn resulted in negative balance"); 
        }

        emit Burn(from, amount);
    }
}

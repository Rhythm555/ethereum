//SPDX-License-Identifier: MIT 
pragma solidity 0.8.18;

contract MyToken {
    // Public variables
    string public tokenName = "scifi"; 
    string public tokenSymbol = "sf";
    uint public totalSupply = 100;

    // Mapping for balances
    mapping(address => uint) public balances;

    // Mint function
    function mint(address _to, uint _value) external {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function
    function burn(address _from, uint _value) external {
        require(balances[_from] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}

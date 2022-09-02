// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


interface Exchange1 {
    function sellTokens(address _token, uint _amount) external returns (uint amount);
}

interface Exchange2 {
    function buyTokens(address _token) external payable returns (uint amount);
}

interface ERC20 {
    function transfer(address _to, uint _value) external returns (bool success);
    function approve(address _spender, uint _value) external returns (bool success);
}


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


pragma experimental ABIEncoderV2;

interface Erc20 {
    function balanceOf(address account) external view returns (uint256);
    function approve(address, uint256) external returns (bool);
    function transfer(address, uint256) external returns (bool);
}

interface CErc20 {
    function balanceOf(address owner) external view returns (uint);
    function mint(uint256) external returns (uint256);
    function redeem(uint) external returns (uint);
    function redeemUnderlying(uint) external returns (uint);
    function borrowBalanceCurrent(address account) external returns (uint);
    function borrow(uint borrowAmount) external returns (uint);
    function repayBorrow(uint repayAmount) external returns (uint);
}

interface Comptroller {
    function enterMarkets(address[] calldata)
        external
        returns (uint256[] memory);

    function claimComp(address holder) external;

}

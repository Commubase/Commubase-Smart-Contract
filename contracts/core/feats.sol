// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

interface rarity {
    function level(uint) external view returns (uint);
    function getApproved(uint) external view returns (address);
    function ownerOf(uint) external view returns (address);
    function class(uint) external view returns (uint);
}

interface rarity_codex_feats {
    function feat_by_id(uint _id) external pure returns (
        uint id,
        string memory name,
        bool prerequisites,
        uint prerequisites_feat,
        uint prerequisites_class,
        uint prerequisites_level,
        string memory benefit
    );
}


//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./ERC721D.sol";

contract ScoreData is ERC721D {
    uint256 _tokenIds;

    constructor() ERC721D("ScoreData", "SCO") {
        _tokenIds = 0;
    }

    function uploadData(uint256 data) public returns (uint256) {
        _tokenIds = _tokenIds + 1;
        uint256 newItemId = _tokenIds;

        _mint(msg.sender, newItemId, data);
        return newItemId;
    }
}
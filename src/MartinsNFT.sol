//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";

contract MartinsNFT is ERC721, Ownable {
    uint256 private _tokenIdCounter;
    string private _baseTokenURI;

    constructor (string memory baseURI)
    ERC721("MartinsNFT", "MRTNFT")
    Ownable(msg.sender)
    {_baseTokenURI = baseURI;}
    function mint(address to) external onlyOwner {
        _tokenIdCounter++;
        _safeMint(to, _tokenIdCounter);
    }
    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }
}
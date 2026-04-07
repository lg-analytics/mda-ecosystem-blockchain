// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MeuNFT is ERC721, Ownable {
    uint256 private _proximoId;

    constructor() ERC721("Cracha do Aluno", "CDA") Ownable(msg.sender) {}

    function criarNFT(address para) public onlyOwner {
        _safeMint(para, _proximoId);
        _proximoId++;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20; // Uso de Solidity ^0.8.x exigido [cite: 39]

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Governanca {
    IERC20 public tokenDeVotacao;
    
    struct Proposta {
        string descricao;
        uint256 votosFavoraveis;
        bool executada;
    }

    Proposta[] public propostas;

    constructor(address _tokenEndereco) {
        tokenDeVotacao = IERC20(_tokenEndereco);
    }

    // Cria uma nova votação no protocolo 
    function criarProposta(string memory _descricao) external {
        propostas.push(Proposta({
            descricao: _descricao,
            votosFavoraveis: 0,
            executada: false
        }));
    }

    // Votação baseada no saldo de tokens do usuário 
    function votar(uint256 _propostaId) external {
        uint256 pesoDoVoto = tokenDeVotacao.balanceOf(msg.sender);
        require(pesoDoVoto > 0, "Voce precisa de tokens para votar");
        
        propostas[_propostaId].votosFavoraveis += pesoDoVoto;
    }
}
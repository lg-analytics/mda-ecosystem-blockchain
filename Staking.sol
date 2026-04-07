// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract Staking is ReentrancyGuard {
    IERC20 public tokenDePagamento;
    mapping(address => uint256) public saldoStaking;

    constructor(address _tokenEndereco) {
        tokenDePagamento = IERC20(_tokenEndereco);
    }

    // Função para depositar (Stake)
    function depositar(uint256 _quantidade) external nonReentrant {
        require(_quantidade > 0, "Quantidade precisa ser maior que zero");
        
        // Transfere o token do usuario para este contrato
        tokenDePagamento.transferFrom(msg.sender, address(this), _quantidade);
        
        // Registra quanto o usuario tem guardado
        saldoStaking[msg.sender] += _quantidade;
    }

    // Função para sacar (Withdraw)
    function sacar(uint256 _quantidade) external nonReentrant {
        require(saldoStaking[msg.sender] >= _quantidade, "Saldo insuficiente");
        
        saldoStaking[msg.sender] -= _quantidade;
        tokenDePagamento.transfer(msg.sender, _quantidade);
    }
}
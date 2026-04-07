# mda-ecosystem-blockchain
MVP de um ecossistema Web3 completo integrando Tokens ERC-20, NFTs, Staking com proteção contra reentrância, Governança descentralizada (DAO) e Oráculos de preço.

# 🚀 Protocolo DeFi MDA - Ecossistema Web3

Este repositório contém o código-fonte de um MVP (Minimum Viable Product) de um protocolo financeiro descentralizado, desenvolvido para a disciplina de Sistemas Blockchain.

## 📋 Sobre o Projeto
O projeto simula um ecossistema econômico completo na rede Ethereum, focado em segurança, transparência e governança comunitária.

## 🏗️ Arquitetura e Componentes

### 1. Ativos Digitais (Tokens)
- **ERC-20 (MeuToken.sol):** Unidade de conta e utilidade do protocolo.
- **ERC-721 (MeuNFT.sol):** Ativos exclusivos para recompensas de usuários.

### 2. Smart Contracts de Negócio
- **Staking.sol:** Contrato de custódia para depósito de tokens. Implementa o padrão `ReentrancyGuard` da OpenZeppelin para prevenir ataques de chamadas recursivas.
- **Governança.sol:** Sistema de DAO (Organização Acadêmica Descentralizada) que permite a criação e votação de propostas, onde o peso do voto é proporcional ao saldo de tokens.
- **PrecoOraculo.sol:** Integração com Oráculo (simulação Chainlink) para consumo de dados off-chain (ETH/USD).

## 🛡️ Segurança e Auditoria
O código foi submetido a uma análise estática (Auditoria Preventiva) via Remix IDE, validando:
- Proteção contra Reentrancy.
- Integridade de fluxos de Transferência (Approve/TransferFrom).
- Otimização de custos de Gas.

## 🛠️ Tecnologias Utilizadas
- Solidity ^0.8.20
- OpenZeppelin Contracts
- Remix IDE
- Chainlink Data Feeds (Mock)

## 👤 Autor
Letícia G.

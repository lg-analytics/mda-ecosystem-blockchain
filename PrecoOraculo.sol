// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PrecoOraculo {
    // Simulamos o valor que viria da Chainlink
    // 3500 dólares com 8 casas decimais (padrão Chainlink)
    int256 private precoSimulado = 3500 * 10**8;

    function obterPrecoRecente() public view returns (int256) {
        // Retornamos o valor simulado para o contrato não travar
        return precoSimulado / 10**8;
    }

    // Função extra para você mudar o preço manualmente e testar!
    function definirPrecoSimulado(int256 _novoPreco) public {
        precoSimulado = _novoPreco * 10**8;
    }
}
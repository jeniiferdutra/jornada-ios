//
//  main.swift
//  funcoes
//
//  Created by Jenifer Rocha on 18/02/25.
//

import Foundation

// MARK: FUNCAO

// Funcao sem retorno e sem parametro, valores fixos
func somaDoisValores() {
    print(10+10)
}

somaDoisValores() // MARK: O VALOR SEMPRE SEMPRE SERA 20

// Funcao com parametro para deixar ela escalavel, consigo passar qualquer tipo de valor
func somaDoisValores2(valor1: Int, valor2: Int) {
    print(valor1 + valor2)
}

somaDoisValores2(valor1: 25, valor2: 5) // MARK: VALOR PODE SER ALTERAVEL


// MARK: FUNCAO COM RETORNO

func somaValorTotal() -> Int { // retorno de um inteiro
    return 50 + 50
}

print(somaValorTotal())


// MARK: FUNCAO COM RETORNO E PARAMETRO

func somaValorTotal2(valor1: Int, valor2: Int) -> Int{
    return valor1 + valor2
}

print(somaValorTotal2(valor1: 90, valor2: 50))

var valorDaSoma: Int = somaValorTotal2(valor1: 100, valor2: 600)
print(valorDaSoma)

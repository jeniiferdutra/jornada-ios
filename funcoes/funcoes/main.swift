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

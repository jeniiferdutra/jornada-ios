//
//  main.swift
//  dicionario
//
//  Created by Jenifer Rocha on 19/02/25.
//

import Foundation

// 1 elemento -> key
// 2 elemento -> value

// MARK: Diferente dos arrays o dicionario nao é ORDENADO, pois para ele nao ha necessidade, sendo que é realizado sua busca dos seus valores atraves de sua chave e nao por sua posicao.


var nota: [Int : String] = [2: "Nota baixa", 3: "Nota media", 4: "Nota alta", 1: "Nota muito baixa"]

print(nota[30] ?? "Sem valor")

nota.updateValue("Teste", forKey: 1) // MARK: Caso a chave nao existe, ele vai criar um novo elemento no dicionario


for valueNota in nota {
    if valueNota.value == "Teste" {
        nota.removeValue(forKey: valueNota.key)
    }
}

print(nota)

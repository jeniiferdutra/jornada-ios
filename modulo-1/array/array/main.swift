//
//  main.swift
//  array
//
//  Created by Jenifer Rocha on 19/02/25.
//

import Foundation

// Uma lista
// Index -> posicao de um elemento na lista
// Ordenado -> Suas posicoes NAO sao alteradas


var diasDaSemana: [String] = ["segunda-feira", "terca-feira", "quarta-feira", "quinta-feira", "sexta-feira"]
print(diasDaSemana[2])
print(diasDaSemana.count)
print(diasDaSemana.isEmpty)

for value in diasDaSemana {
    print(value)
}

for (index, value) in diasDaSemana.enumerated() {
    if value == "sexta-feira" {
        print("chegoou!")
        diasDaSemana.remove(at: index)
    }
}

diasDaSemana.append("Sabado")

print("Lista Atualizada: \(diasDaSemana)")

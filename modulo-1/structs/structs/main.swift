//
//  main.swift
//  structs
//
//  Created by Jenifer Rocha on 22/02/25.
//

import Foundation

// MARK: TRABALHA COM VALUE TYPE E NAO ACEITA HERANÇA

struct Sobrado {
    
    var quantidadePorta: Int
    var quantidadeBanheiro: Int
    var emConstrucao: Bool
    
    
    
}

var casaJenifer: Sobrado = Sobrado(quantidadePorta: 20, quantidadeBanheiro: 5, emConstrucao: true)
var casaAmigo: Sobrado = Sobrado(quantidadePorta: 8, quantidadeBanheiro: 2, emConstrucao: false)

print(casaJenifer.quantidadeBanheiro)
print(casaAmigo.quantidadeBanheiro)

casaAmigo = casaJenifer

casaAmigo.quantidadeBanheiro = 20

print(casaJenifer.quantidadeBanheiro)
print(casaAmigo.quantidadeBanheiro)

// MARK: A referencia para structs nao importa, apenas o valor que importa. STRUCT HERDA DE PROTOCOLO

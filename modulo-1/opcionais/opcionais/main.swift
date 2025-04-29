//
//  main.swift
//  opcionais
//
//  Created by Jenifer Rocha on 18/02/25.
//

import Foundation

// MARK: OPCIONAIS

var myName: String? = "Jenifer"
var myAge: Int?

print("Meu nome é \(myName ?? "nao tenho nome")")

var cpf: Int?
var frase: String = "Olá, eu me chamo Jenifer e meu cpf é \(cpf ?? 1000000)"
print(frase)

var sobrenome: String?
sobrenome = "Rocha"
var nomeJenifer: String = "Jenifer"
var nomeCompleto: String = nomeJenifer + " " + (sobrenome ?? "Dutra")
print(nomeCompleto)


var minhaCarteira: Double?
var total: Double = minhaCarteira ?? 0
print(total)


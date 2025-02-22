//
//  main.swift
//  condicionais
//
//  Created by Jenifer Rocha on 19/02/25.
//

import Foundation

func validarMaiorDeIdade(idade: Int) -> Bool{
    if idade >= 18 {
        return true
    } else {
        return false
    }
}

print(validarMaiorDeIdade(idade: 17))

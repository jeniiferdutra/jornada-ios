//
//  main.swift
//  estrutura-de-repeticao
//
//  Created by Jenifer Rocha on 19/02/25.
//

import Foundation

// MARK: WHILE

var index: Int = 0

while index <= 10 {
    print("index: \(index)")
    index = index + 1
}

print("Valor do indice final \(index)")


// MARK: REPEAT

var indexRepeat: Int = 1

repeat {
    print("index: \(indexRepeat)")
    indexRepeat = indexRepeat + 1
} while indexRepeat <= 10


// MARK: FOR

for value in 1...5 {
    print(value)
}

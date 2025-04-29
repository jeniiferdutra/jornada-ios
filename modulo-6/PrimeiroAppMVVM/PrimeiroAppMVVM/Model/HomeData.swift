//
//  HomeData.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 11/04/25.
//

import UIKit

// MARK: Decodable: decodifica -> transforma um JSon em um Objeto

// MARK: Encodable: codifica um Objeto, ou seja, tornar um tipo de dado no Swift em JSon

// MARK: Codable: codifica e decodifica

struct HomeData: Codable {
    var stories: [Stories]?
    var posts: [Posts]?
}



//
//  TabBarController.swift
//  desafio-tabbar
//
//  Created by Jenifer Rocha on 17/03/25.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configTabBar()
    }
    
    func configItems() {
        guard let items = tabBar.items else { return } // Verifica se existem itens na TabBar. Se não existirem, encerra a função.

        items[0].title = "Tela 01"
        items[0].image = UIImage(systemName: "person")
        items[1].title = "Tela 02"
        items[1].image = UIImage(systemName: "phone")
        items[2].title = "Tela 03"
        items[2].image = UIImage(systemName: "trash")
    }

    func configTabBar() {
        tabBar.layer.borderWidth = 0.2 // Define a largura da borda da TabBar como 0.2 pontos
        tabBar.layer.borderColor = UIColor.black.cgColor // Define a cor da borda da TabBar como preta
        tabBar.backgroundColor = .white // Define a cor de fundo (background) da TabBar como branca
    }
}

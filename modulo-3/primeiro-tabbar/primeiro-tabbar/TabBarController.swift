//
//  TabBarController.swift
//  primeiro-tabbar
//
//  Created by Jenifer Rocha on 13/03/25.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configTabBar()
    }

    
    func configItems() {
        guard let items = tabBar.items else { return }
        items[0].title = "Test 01"
        items[0].title = "Test 02"
        items[0].title = "Test 03"
    }
    
    func configTabBar() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }
}

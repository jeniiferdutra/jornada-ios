//
//  HomeVC.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 01/05/25.
//

import UIKit

class HomeVC: UIViewController {
    
    private var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}

//
//  ViewController.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 24/03/25.
//

import UIKit

class LoginVC: UIViewController {
    
    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}


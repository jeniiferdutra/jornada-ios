//
//  ViewController.swift
//  PrimeiroProjetoViewCode
//
//  Created by Jenifer Rocha on 21/03/25.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(delegate: self)
    }

}

extension LoginVC: LoginScreenProtocol {
    func tappedLoginButton() {
        print("Chegou na VC")
    }
    
    
}

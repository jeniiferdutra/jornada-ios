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
        loginScreen?.configTextFieldDelegate(delegate: self)
    }

}

extension LoginVC: LoginScreenProtocol { // tudo relacionado ao protocolo
    func tappedLoginButton() {
        print("Chegou na VC")
    }
    
    
}

extension LoginVC: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder() // para o teclado descer 
        return false
    }
}

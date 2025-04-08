//
//  ViewController.swift
//  PrimeiroProjetoViewCode02
//
//  Created by Jenifer Rocha on 07/04/25.
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
        screen?.delegate(delegate: self)
        screen?.configTextFieldsDelegate(delegate: self)
    }
}

extension LoginVC: LoginScreenProtocol {
    func tappedLoginButton() {
        let vc: HomeVC = HomeVC()
        present(vc, animated: true) // Modal
        // navigationController?.pushViewController(vc, animated: true) // caso a vc seja uma navigationController
    }
    
}

extension LoginVC: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        let email: String = screen?.emailTextField.text ?? ""
        let password: String = screen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            print("Botao habilitado")
            screen?.loginButton.isEnabled = true
            screen?.loginButton.backgroundColor = .darkGray
        } else {
            print("Botao desabilitado")
            screen?.loginLabel.isEnabled = false
            screen?.loginButton.backgroundColor = .darkGray.withAlphaComponent(0.6)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return false
    }
}

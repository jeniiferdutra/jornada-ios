//
//  ViewController.swift
//  PrimeiroProjetoViewCode
//
//  Created by Jenifer Rocha on 08/04/25.
//

import UIKit

class LoginVC: UIViewController {
    
    private var screen: LoginScreen?
    private var viewModel: LoginViewModel = LoginViewModel()
    
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
//        let vc: HomeVC = HomeVC()
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true) // Modal
//        navigationController?.pushViewController(vc, animated: true) // caso a vc seja uma navigationController
        
        viewModel.login(email: screen?.emailTextField.text ?? "", password: screen?.passwordTextField.text ?? "")
        
        
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
            screen?.loginButton.isEnabled = true
            screen?.loginButton.backgroundColor = .darkGray
        } else {
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



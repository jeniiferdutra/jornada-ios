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
    
    override func viewWillAppear(_ animated: Bool) { // ocultar a navigation
        navigationController?.navigationBar.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextFieldsDelegate(delegate: self)
        viewModel.delegate(delegate: self)
    }
    
}

extension LoginVC: LoginScreenProtocol {
    
    func tappedRegisterButton() {
        let vc = RegisterVC()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func tappedLoginButton() {
        viewModel.login(email: screen?.emailTextField.text ?? "", password: screen?.passwordTextField.text ?? "")
    }
    
}

extension LoginVC: LoginViewModelProtocol {
    
    func sucessLogin() {
        let vc: HomeVC = HomeVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true) // Modal
    }
    
    func errorLogin(errorMessage: String) {
        Alert(controller: self).showAlertInformation(title: "Ops! error Login!", message: errorMessage )
    }
    
}

extension LoginVC: UITextFieldDelegate {

    func textFieldDidEndEditing(_ textField: UITextField) {

        let email: String = screen?.emailTextField.text ?? ""
        let password: String = screen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            screen?.loginButton.isEnabled = true
            screen?.loginButton.backgroundColor = .blue
        } else {
            screen?.loginButton.isEnabled = false
            screen?.loginButton.backgroundColor = .lightGray
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        textField.resignFirstResponder()
        return false
    }
}



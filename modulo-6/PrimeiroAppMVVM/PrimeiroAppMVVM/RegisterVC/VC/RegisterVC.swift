//
//  ViewController.swift
//  PrimeiroProjetoViewCode
//
//  Created by Jenifer Rocha on 08/04/25.
//

import UIKit

class RegisterVC: UIViewController {
    
    private var screen: RegisterScreen?
    private var viewModel: RegisterViewModel = RegisterViewModel()
    
    override func loadView() {
        screen = RegisterScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        screen?.configTextFieldsDelegate(delegate: self)
        viewModel.delegate(delegate: self)
    }
    
}

extension RegisterVC: RegisterScreenProtocol {
    func tappedRegisterButton() {
        viewModel.register(email: screen?.emailTextField.text ?? "", password: screen?.passwordTextField.text ?? "")
    }
    
}

extension RegisterVC: RegisterViewModelProtocol {
    
    func sucessRegister() {
        let vc: HomeVC = HomeVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true) // Modal
    }
    
    func errorRegister(errorMessage: String) {
        print(#function)
        Alert(controller: self).showAlertInformation(title: "Ops! error cadastro!", message: errorMessage )
    }
    
}

extension RegisterVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {

        let email: String = screen?.emailTextField.text ?? ""
        let password: String = screen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            screen?.registerButton.isEnabled = true
            screen?.registerButton.backgroundColor = .darkGray
        } else {
            screen?.registerButton.isEnabled = false
            screen?.registerButton.backgroundColor = .darkGray.withAlphaComponent(0.6)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return false
    }
}



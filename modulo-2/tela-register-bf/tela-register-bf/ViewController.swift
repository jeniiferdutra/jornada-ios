//
//  ViewController.swift
//  tela-register-bf
//
//  Created by Jenifer Rocha on 26/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.keyboardType = .default
        emailTextField.keyboardType = .emailAddress
        passwordTextField.isSecureTextEntry = true
        
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        registerButton.isEnabled = false // bloquear a açao do usuario no botao
        registerButton.setTitleColor(.white.withAlphaComponent(0.4), for: .disabled)
        
    }

    @IBAction func tappedRegisterBuutton(_ sender: UIButton) {
        print("teste")
    }
    
    func validateTextField() {
        if nameTextField.text != "" && emailTextField.text != "" && passwordTextField.text != "" {
            registerButton.isEnabled = true
        } else {
            registerButton.isEnabled = false
        }
    }
    
}

extension ViewController: UITextFieldDelegate { // extensao da classe
    
    func textFieldDidBeginEditing(_ textField: UITextField) { // mostrar o teclado
        print(#function)
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) { // teclado desaparece
        print(#function)
        textField.layer.borderWidth = 0
        validateTextField()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // quando clica no return
        print(#function)
        textField.resignFirstResponder() // abaixar o teclado, portanto o metodo textFieldDidEndEditing é disparado
        return true
        // n colocamos a funcao validateTextField pq ele só sera disparado caso o usuario clique no botao return
    }
    
}

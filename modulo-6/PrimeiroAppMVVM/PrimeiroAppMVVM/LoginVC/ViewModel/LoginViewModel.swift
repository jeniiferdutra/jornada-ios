//
//  LoginViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 08/04/25.
//

import UIKit
import FirebaseAuth

protocol LoginViewModelProtocol: AnyObject {
    func sucessLogin()
    func errorLogin(errorMessage: String)
}

class LoginViewModel {
    
    private weak var delegate: LoginViewModelProtocol?
    private var auth = Auth.auth() // parte de autenticaçao do firebase
    
    public func delegate(delegate: LoginViewModelProtocol?) {
        self.delegate = delegate
    }
    
    public func login(email: String, password: String) { // funcao de login no qual vai informar email e senha
        
        // auth.signIn(withEmail -> informar o email e senha e vai verificar se contem esse login no firebase
        // autoResult -> resultado da autenticacao
        
        auth.signIn(withEmail: email, password: password)  { autoResult, error in
            if error == nil { // Caso nao deu nenhum erro
                print("Sucesso login")
                self.delegate?.sucessLogin()
            } else {
                print("Error, login, error: \(error?.localizedDescription ?? "")")
                self.delegate?.errorLogin(errorMessage: error?.localizedDescription ?? "")
            }
        }
        
    }
    
    public func registerUser(email: String, password: String) {
        
        auth.createUser(withEmail: email, password: password)  { autoResult, error in
            if error == nil {
                print("Sucesso cadastro")
            } else {
                print("Error, cadastro, error: \(error?.localizedDescription ?? "")")
            }
        }
    }
    
}

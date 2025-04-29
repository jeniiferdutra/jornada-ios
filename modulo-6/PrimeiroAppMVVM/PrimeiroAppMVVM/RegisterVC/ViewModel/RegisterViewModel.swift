//
//  LoginViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 08/04/25.
//

import UIKit
import FirebaseAuth

protocol RegisterViewModelProtocol: AnyObject {
    func sucessRegister()
    func errorRegister(errorMessage: String)
}

class RegisterViewModel {
    
    private weak var delegate: RegisterViewModelProtocol?
    private var auth = Auth.auth() // parte de autenticaçao do firebase
    
    public func delegate(delegate: RegisterViewModelProtocol?) {
        self.delegate = delegate
    }

    public func register(email: String, password: String) {
        
        auth.createUser(withEmail: email, password: password)  { autoResult, error in
            if error == nil {
                print("Sucesso cadastro")
                self.delegate?.sucessRegister()
            } else {
                print("Error, cadastro, error: \(error?.localizedDescription ?? "")")
                self.delegate?.errorRegister(errorMessage: error?.localizedDescription ?? "")
            }
        }
    }
    
}

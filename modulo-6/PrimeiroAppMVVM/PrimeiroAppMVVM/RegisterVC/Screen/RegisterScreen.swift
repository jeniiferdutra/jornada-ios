//
//  LoginScreen.swift
//  PrimeiroProjetoViewCode
//
//  Created by Jenifer Rocha on 08/04/25.
//

import UIKit

protocol RegisterScreenProtocol: AnyObject {
    func tappedRegisterButton()
}

class RegisterScreen: UIView {
    
    private weak var delegate: RegisterScreenProtocol?
    
    public func delegate(delegate: RegisterScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var registerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Cadastrar"
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.autocorrectionType = .no
        email.backgroundColor = .white
        email.borderStyle = .roundedRect
        email.keyboardType = .emailAddress
        email.placeholder = "Digite seu email"
        email.textColor = .darkGray
        return email
    }()
    
    lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.autocorrectionType = .no
        password.backgroundColor = .white
        password.borderStyle = .roundedRect
        password.placeholder = "Digite sua senha"
        password.isSecureTextEntry = true
        password.textColor = .darkGray
        return password
    }()
    
    lazy var registerButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Cadastre-se", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        btn.setTitleColor(.white, for: .normal)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 7.5
        btn.isEnabled = false
        btn.backgroundColor = .darkGray.withAlphaComponent(0.6)
        btn.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedRegisterButton(_ sender: UIButton) {
        delegate?.tappedRegisterButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(registerLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(registerButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            registerLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            registerLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: registerLabel.bottomAnchor, constant: 45),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 45),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            registerButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            registerButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            registerButton.heightAnchor.constraint(equalTo: emailTextField.heightAnchor)
        ])
    }
    
    public func configTextFieldsDelegate(delegate: UITextFieldDelegate) {
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }

}

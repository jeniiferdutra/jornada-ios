//
//  ViewControllerScreen.swift
//  PrimeiroProjetoAcessibilidade
//
//  Created by Jenifer Rocha on 25/04/25.
//

import UIKit

protocol ViewControllerScreenProtocol: AnyObject {
    func tappedLoginButton()
}

class ViewControllerScreen: UIView {
    
    private weak var delegate: ViewControllerScreenProtocol?
    
    public func delegate(delegate: ViewControllerScreenProtocol) {
        self.delegate = delegate
    }
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Acessiblidade"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        return label
    }()
    
    lazy var positionOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return label
    }()
    
    lazy var positionTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return label
    }()
    
    lazy var positionThreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return label
    }()
    
    lazy var positionFourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "4"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return label
    }()
    
    lazy var positionFiveLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return label
    }()
    
    lazy var loginButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Login", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        btn.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedLoginButton() {
        delegate?.tappedLoginButton()
    }
    
    lazy var personImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(systemName: "person")
        return img
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addElements()
        configConstraints() 
    }
    
    private func addElements() {
        addSubview(titleLabel)
        addSubview(positionOneLabel)
        addSubview(positionTwoLabel)
        addSubview(positionThreeLabel)
        addSubview(positionFourLabel)
        addSubview(positionFiveLabel)
        addSubview(loginButton)
        addSubview(personImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            positionFourLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            positionFourLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            positionFiveLabel.topAnchor.constraint(equalTo: positionFourLabel.bottomAnchor, constant: 20),
            positionFiveLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            positionThreeLabel.topAnchor.constraint(equalTo: positionFiveLabel.bottomAnchor, constant: 20),
            positionThreeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            positionOneLabel.topAnchor.constraint(equalTo: positionThreeLabel.bottomAnchor, constant: 20),
            positionOneLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            positionTwoLabel.topAnchor.constraint(equalTo: positionOneLabel.bottomAnchor, constant: 20),
            positionTwoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            loginButton.topAnchor.constraint(equalTo: positionTwoLabel.bottomAnchor, constant: 20),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            personImageView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            personImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            personImageView.heightAnchor.constraint(equalToConstant: 120),
            personImageView.widthAnchor.constraint(equalToConstant: 120)
        ])
    }

}

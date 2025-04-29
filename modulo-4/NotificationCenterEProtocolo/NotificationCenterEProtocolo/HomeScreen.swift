//
//  HomeScreen.swift
//  NotificationCenterEProtocolo
//
//  Created by Jenifer Rocha on 25/03/25.
//

import UIKit

protocol HomeScreenProtocol: AnyObject {
    func tappedChooseButton()
}

class HomeScreen: UIView {
    
    private weak var delegate: HomeScreenProtocol?
    
    public func delegate(delegate: HomeScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var logoImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "logo_apple")?.withRenderingMode(.alwaysTemplate)
        img.tintColor = .white
        return img
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    lazy var chooseButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Clique aqui", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .white
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 8
        btn.titleLabel?.textAlignment = .center
        btn.addTarget(self, action: #selector(tappedChooseButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedChooseButton(_ sender: UIButton) {
        delegate?.tappedChooseButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(logoImageView)
        addSubview(descriptionLabel)
        addSubview(chooseButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            logoImageView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -80),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            
            descriptionLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 30),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 60),
            
            chooseButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -60),
            chooseButton.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            chooseButton.trailingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            chooseButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
}

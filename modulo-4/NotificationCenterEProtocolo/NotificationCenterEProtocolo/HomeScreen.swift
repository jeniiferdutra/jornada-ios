//
//  HomeScreen.swift
//  NotificationCenterEProtocolo
//
//  Created by Jenifer Rocha on 25/03/25.
//

import UIKit

class HomeScreen: UIView {
    
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
        label.textColor = .white
        label.textAlignment = .center
        label.text = "Teste Label"
        label.font = UIFont.systemFont(ofSize: 25)
        
        return label
    }()

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
            
            
            
        ])
    }
}

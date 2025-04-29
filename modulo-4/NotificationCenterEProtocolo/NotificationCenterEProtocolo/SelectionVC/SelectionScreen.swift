//
//  SelectionScreen.swift
//  NotificationCenterEProtocolo
//
//  Created by Jenifer Rocha on 25/03/25.
//

import UIKit

protocol SelectionScreenProtocol: AnyObject {
    func tappedMacbookButton()
    func tappedImacButton()
}

class SelectionScreen: UIView {
    
    private weak var delegate: SelectionScreenProtocol?
    
    public func delegate(delegate: SelectionScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .yellow
        label.textAlignment = .center
        label.text = "Opçoes"
        label.font = UIFont.systemFont(ofSize: 34)
        return label
    }()
    
    lazy var macbookButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "macbook")?.withRenderingMode(.alwaysOriginal), for: .normal)
        btn.addTarget(self, action: #selector(tappedMacbookButton), for: .touchUpInside)
        return btn
    }()
    
    lazy var imacButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "imac")?.withRenderingMode(.alwaysOriginal), for: .normal)
        btn.addTarget(self, action: #selector(tappedImacButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedMacbookButton(_ sender: UIButton) {
        delegate?.tappedMacbookButton()
    }
    
    @objc func tappedImacButton(_ sender: UIButton) {
        delegate?.tappedImacButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(descriptionLabel)
        addSubview(macbookButton)
        addSubview(imacButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            descriptionLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            macbookButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 60),
            macbookButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            macbookButton.heightAnchor.constraint(equalToConstant: 150),
            macbookButton.widthAnchor.constraint(equalToConstant: 230),
            
            imacButton.topAnchor.constraint(equalTo: macbookButton.bottomAnchor, constant: 40),
            imacButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            imacButton.heightAnchor.constraint(equalTo: macbookButton.heightAnchor),
            imacButton.widthAnchor.constraint(equalTo: macbookButton.widthAnchor)
        ])
    }
}

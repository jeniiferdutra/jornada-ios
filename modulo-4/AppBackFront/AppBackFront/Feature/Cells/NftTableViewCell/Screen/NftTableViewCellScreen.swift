//
//  NftTableViewCellScreen.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 03/05/25.
//

import UIKit

class NftTableViewCellScreen: UIView {
    
    lazy var viewBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 153/255, green: 153/255, blue: 153/255, alpha: 1.0)
        view.clipsToBounds = true
        view.layer.cornerRadius = 18
        return view
    }()
    
    lazy var nftImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleToFill
        img.clipsToBounds = true
        img.layer.cornerRadius = 18
        return img
    }()
    
    lazy var userImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.layer.cornerRadius = 24
        return img
    }()
    
    lazy var ownerByPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 69/255, green: 191/255, blue: 229/255, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    lazy var userLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 69/255, green: 191/255, blue: 229/255, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    lazy var priceValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    private func addViews() {
        addSubview(viewBackground)
        viewBackground.addSubview(nftImageView)
        viewBackground.addSubview(userImageView)
        viewBackground.addSubview(ownerByPriceLabel)
        viewBackground.addSubview(userLabel)
        viewBackground.addSubview(priceLabel)
        viewBackground.addSubview(priceValueLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            viewBackground.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            viewBackground.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            viewBackground.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            viewBackground.heightAnchor.constraint(equalToConstant: 340),
            
            nftImageView.topAnchor.constraint(equalTo: viewBackground.topAnchor),
            nftImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            nftImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            nftImageView.heightAnchor.constraint(equalToConstant: 270),
            
            
            
        ])
    }

}

//
//  NFTFiltersCollectionViewCellScreen.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 02/05/25.
//

import UIKit

class NFTFiltersCollectionViewCellScreen: UIView {
    
    lazy var filterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        label.clipsToBounds = true
        label.layer.cornerRadius = 18
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        addSubview(filterLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            filterLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            filterLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            filterLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            filterLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

}

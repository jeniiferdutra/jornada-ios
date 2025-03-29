//
//  StoryCollectionViewCell.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 28/03/25.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "StoryCardCollectionViewCell"
    
    private var screen: StoryCollectionViewCellScreen = StoryCollectionViewCellScreen()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        configScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreen() {
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
    
    public func setupCell(data: Stories, indexPath: IndexPath) {
        screen.profileImageView.image = UIImage(named: data.image)
        screen.userNameLabel.text = data.userName
        screen.addBtn.isHidden = indexPath.row == 0 ? false : true // se for igual a 0 quero q retorne um false para q ele n oculta, caso contrario oculta (primeiro item deixar amostra o botao, os demais quero ocultar)
    }
}

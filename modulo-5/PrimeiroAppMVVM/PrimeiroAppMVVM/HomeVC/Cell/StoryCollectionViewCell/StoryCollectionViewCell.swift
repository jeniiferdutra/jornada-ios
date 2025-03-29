//
//  StoryCollectionViewCell.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 28/03/25.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "StoryCardCollectionViewCell"
    
    // private var screen: StoryCardCollectionViewCellScreen = StoryCardCollectionViewCellScreen()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        //configScreen()
        //screen.configProtocolsCollectionView(delegate: self, dataSource: self)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

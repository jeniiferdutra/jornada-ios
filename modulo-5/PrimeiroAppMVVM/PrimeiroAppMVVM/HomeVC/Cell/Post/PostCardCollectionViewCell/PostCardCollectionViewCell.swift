//
//  PostCardCollectionViewCell.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 31/03/25.
//

import UIKit

//MARK: Próximo passo é criar uma Screen

class PostCardCollectionViewCell: UICollectionViewCell {
    
    private var screen: PostCardCollectionViewCellScreen = PostCardCollectionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configScreen()
        screen.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreen() {
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
    
}

extension PostCardCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 450)
    }
    
}

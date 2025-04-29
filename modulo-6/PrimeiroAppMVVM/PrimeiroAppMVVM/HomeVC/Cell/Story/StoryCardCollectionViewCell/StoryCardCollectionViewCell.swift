//
//  StoryCardCollectionViewCell.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 26/03/25.
//

import UIKit

class StoryCardCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "StoryCardCollectionViewCell"
    
    private var screen: StoryCardCollectionViewCellScreen = StoryCardCollectionViewCellScreen() // MARK: Dentro da célula contém uma Screen que contém 2 elementos, a View e a Collection, a View é a parte branca e dentro dela tem a Collection para realizar scroll, número infinito de stories para ficar de maneira escalavel
    
    // // MARK: Criamos a ViewModel opcional da CÉLULA pois o seu construtor (init) pode receber diferentes valores ao configurar a célula, permitindo a reutilização eficiente ana CollectionView
    
    private var viewModel: StoryCardViewModel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configScreen()
        //MARK: Se estamos trabalhando com CollectionView entao temos que assinar os seus protocolos
        screen.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreen() {
        contentView.addSubview(screen)
        screen.pin(to: contentView) // método de extensão que aplica constraints para que screen ocupe toda a contentView
    }
    
    // MARK: Setup que recebe a lista, deste modo, gerando a instancia da ViewModel e dando vida a ela
    
    public func setupCell(listStory: [Stories]) {
        viewModel = StoryCardViewModel(listStory: listStory) // MARK: Nossa ViewModel só ganha vida a partir dessa linha
    }
    
}

// MARK: Assinou os protocolos, entao a classe esta em conformidade com o mesmo

extension StoryCardCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel?.numberOfItems ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // MARK: Popula a célula
        
        guard let viewModel = viewModel else { return UICollectionViewCell() } // MARK: Nossa ViewModel é opcional, por isso criamos o guard let, deste modo estou removendo a opcionalidade dele e caso ele n consiga vai me retornar uma instancia da célula
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell // sempre informar que é StoryCardCollectionViewCell para acessar a setupCell
        
        // MARK: Vai retornar apenas um único story
        
        cell?.setupCell(data: viewModel.loadCurrentStory(indexPath: indexPath), indexPath: indexPath)
        
        return cell ?? UICollectionViewCell() // prox passo é criar a célula
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 120)
    }
}

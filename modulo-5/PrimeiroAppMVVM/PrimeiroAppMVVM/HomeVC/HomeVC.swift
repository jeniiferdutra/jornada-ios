//
//  ViewController.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 26/03/25.
//

import UIKit

class HomeVC: UIViewController {
    
    private var homeScreen: HomeScreen? // MARK: A sua própria visualizaçao
    private var viewModel: HomeViewModel = HomeViewModel() // MARK: Camada responsavel por cuidar de toda parte lógica da tela Home
    
    override func loadView() {//MARK: Dar vida a homeScreen
        homeScreen = HomeScreen()
        view = homeScreen // MARK: View esta recebendo a nossa homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: Assinando os protocolos da Collection
        homeScreen?.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
}

// MARK: Se eu estou assinando entao a nossa classe tem que entrar em conformidade para poder assinar os protocolos

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // MARK: Numeros de itens que a Collection vai ter
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.numberOfItems
    }
    
    //MARK: De acordo com a célula que temos, vai montar a nossa Collection
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // MARK: Criando a célula que é todo o card (StoryCardCollectionViewCell)
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCardCollectionViewCell.identifier, for: indexPath) as? StoryCardCollectionViewCell
        
        // MARK: Setup que passa a lista de Stories que esta na ViewModel
        
        cell?.setupCell(listStory: viewModel.getListStory)
        return cell ?? UICollectionViewCell()
    }
    
    // MARK: Dimensao que passamos para cada tela
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        viewModel.sizeForItemAt(indexPath: indexPath, frame: collectionView.frame)
    }
}

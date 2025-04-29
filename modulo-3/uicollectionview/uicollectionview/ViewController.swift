//
//  ViewController.swift
//  uicollectionview
//
//  Created by Jenifer Rocha on 11/03/25.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var data: [String] = ["honda", "ford", "toyota", "bmw", "audi"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
    }

    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal // define o scroll
            layout.estimatedItemSize = .zero // desativa a estimativa automática do tamanho das células
            
        }
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    // quantos itens tem por sesao da collection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    // pede para retornar uma collection
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        cell?.setupCell(nameImage: data[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
    
    
}

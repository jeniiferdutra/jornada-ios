//
//  HomeViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 26/03/25.
//

import UIKit

class HomeViewModel {
    
    // MARK: Objeto que sempre deixaremos private para que a camada de View nao faça manipulaçoes com o respectivo objeto
    
    private var posts = [Posts]()
    private var story = [Stories]()
    
    // MARK: Acessar o objeto criando uma variavel computada do tipo get
    
    public var getListPosts: [Posts] {
        posts
    }
    
    public var getListStory: [Stories] {
        story
    }
    
    // MARK: Criar de maneira pública o numberOfItems que usamos na propria Collection

    public var numberOfItems: Int {
        2
    }
    
    // MARK: Verificaçao se caso for a primeira célula tenha o padrao do tamanho do layout, caso contrário faça a prox linha
    
    public func sizeForItemAt(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 { // se for a primeira célula
            return CGSize(width: 120, height: frame.height) // altura total
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
}

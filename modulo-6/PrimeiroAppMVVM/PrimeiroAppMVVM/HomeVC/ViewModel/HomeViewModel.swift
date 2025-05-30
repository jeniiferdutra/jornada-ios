//
//  HomeViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 26/03/25.
//

import UIKit

protocol HomeViewModelProtocol: AnyObject {
    func sucess()
    func error()
}

class HomeViewModel {
    
    // MARK: Objeto que sempre deixaremos private para que a camada de View nao faça manipulaçoes com o respectivo objeto
    
    private var service: HomeService = HomeService()
    private var posts = [Posts]()
    private var story = [Stories]()
    
    private weak var delegate: HomeViewModelProtocol?
    
    public func delegate(delegate: HomeViewModelProtocol?) {
        self.delegate = delegate
    }
    
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
    
    public func fetchAllRequest() {
        service.getHomeURLSession { homeData, error in // chamando o serviço
            if error == nil { // se nao existe erro
                self.posts = homeData?.posts ?? []
                self.story = homeData?.stories ?? []
                self.delegate?.sucess()
            } else {
                self.delegate?.error()
            }
        }
    }
}

//
//  HomeViewModel.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 01/05/25.
//

import UIKit

protocol HomeViewDelegate: AnyObject {
    func success()
    func error()
}

class HomeViewModel {
    
    private let service: HomeService = HomeService()
    private var nftData: NFTData?
    weak private var delegate: HomeViewDelegate?
    
    public func delegate(delegate: HomeViewDelegate?) {
        self.delegate = delegate
    }
    
    public func fetchRequest(_ typeFatch: TypeFatch) {
        
        switch typeFatch {
        case .mock:
            service.getHomeFromJson { result, failure in
                if let result {
                    self.nftData = result
                    self.delegate?.success()
                } else {
                    print(failure as Any)
                    self.delegate?.error()
                }
            }
        case .request:
            service.getHome { result, failure in
                if let result {
                    self.nftData = result
                    self.delegate?.success()
                } else {
                    print(failure as Any)
                    self.delegate?.error()
                }
            }
        }
        
    }
    
    
}

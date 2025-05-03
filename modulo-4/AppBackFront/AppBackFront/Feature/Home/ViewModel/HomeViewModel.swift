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
    
    // MARK: FilterCollectionView
    
    public var numberOfItemsInSection: Int {
        return nftData?.filterListNft?.count ?? 0
    }
    
    public func loadCurrentFilterNft(indexPath: IndexPath) -> FilterNft {
        return nftData?.filterListNft?[indexPath.row] ?? FilterNft()
    }
    
    public var sizeForItemAt: CGSize  {
        return CGSize(width: 100, height: 34)
    }
    
    // MARK: NftTableViewCell
    
    public var numberOfRowsInSection: Int {
        return nftData?.nftList?.count ?? 0
    }
    
    public func loadCurrentNft(indexPath: IndexPath) -> Nft {
        return nftData?.nftList?[indexPath.row] ?? Nft()
    }
    
    public var heightForRowAt: CGFloat  {
        return 360
    }
}

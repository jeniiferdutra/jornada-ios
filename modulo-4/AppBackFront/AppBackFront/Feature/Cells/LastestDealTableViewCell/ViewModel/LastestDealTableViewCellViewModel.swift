//
//  LastestDealTableViewCellViewModel.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 13/05/25.
//

import UIKit

enum HeightLastestDeal: CGFloat {
    case height = 70
}

class LastestDealTableViewCellViewModel {

    var nft: Nft?
    
    public func setNft(nft: Nft) {
        self.nft = nft
    }
    
    public var title: String {
        return nft?.titleLatestDeals ?? ""
    }
    
    public var numberOfRowsInSection: Int {
        return nft?.latestDeals?.count ?? 0
    }
    
    public var heightForRowAt: CGFloat {
        return HeightLastestDeal.height.rawValue
    }
    
    public func loadCurrentLatestDeal(indexPath: IndexPath) -> LatestDeal{
        return nft?.latestDeals?[indexPath.row] ?? LatestDeal()
    }
    
    public func isInicial(indexPath: IndexPath) -> Bool {
        return indexPath.row == 0
    }
    
    public func isFinal(indexPath: IndexPath) -> Bool {
        return indexPath.row == numberOfRowsInSection - 1
    }
}

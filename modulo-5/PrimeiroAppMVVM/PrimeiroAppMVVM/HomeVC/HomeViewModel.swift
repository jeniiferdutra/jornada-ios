//
//  HomeViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 26/03/25.
//

import UIKit

class HomeViewModel {

    public var numberOfItems: Int {
        1
    }
    
    public func sizeForItemAt(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 { // se for a primeira célula
            return CGSize(width: 120, height: frame.height) // altura total
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
}

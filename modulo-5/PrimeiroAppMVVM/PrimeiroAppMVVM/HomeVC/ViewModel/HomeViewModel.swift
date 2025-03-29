//
//  HomeViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 26/03/25.
//

import UIKit

class HomeViewModel {
    
    private var story = [Stories(image: "img1", userName: "Add Story"),
                         Stories(image: "img2", userName: "jack"),
                         Stories(image: "img3", userName: "carolina"),
                         Stories(image: "img4", userName: "gabriel"),
                         Stories(image: "img5", userName: "ariana josep"),
                         Stories(image: "img6", userName: "puggy_101"),
                         Stories(image: "img7", userName: "dheeraj_ks")
    ]
    
    public var getListStory: [Stories] {
        story
    }

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

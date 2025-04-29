//
//  PostCardViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 31/03/25.
//

import UIKit

class PostCardViewModel {

    private var listPosts: [Posts]
    
    init(listPosts: [Posts]) {
        self.listPosts = listPosts
    }
    
    public var numberOfItems: Int {
        listPosts.count
    }
    
    public func loadCurrentPosts(indexPath: IndexPath) -> Posts {
        listPosts[indexPath.row]
    }
}

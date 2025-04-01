//
//  StoryCardViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 27/03/25.
//

import UIKit

class StoryCardViewModel {
    
    // MARK: Variavel de lista
    
    private var listStory: [Stories]
    
    init(listStory: [Stories]) {
        self.listStory = listStory
    }
    
    public var numberOfItems: Int {
        listStory.count
    }
    
    //MARK: listStory é uma lista e abaixo esta retornando um único story 
    
    public func loadCurrentStory(indexPath: IndexPath) -> Stories {
        listStory[indexPath.row]
    }
}

//
//  StoryCardViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 27/03/25.
//

import UIKit

class StoryCardViewModel {
    
    private var listStory: [Stories]
    
    init(listStory: [Stories]) {
        self.listStory = listStory
    }
    
    public var numberOfItems: Int {
        listStory.count
    }
    
    func loadCurrentStory(indexPath: IndexPath) -> Stories {
        listStory[indexPath.row]
    }
    
    

}

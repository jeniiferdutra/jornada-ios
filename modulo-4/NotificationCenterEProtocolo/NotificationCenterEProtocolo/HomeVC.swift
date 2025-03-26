//
//  ViewController.swift
//  NotificationCenterEProtocolo
//
//  Created by Jenifer Rocha on 25/03/25.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen: HomeScreen?
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}


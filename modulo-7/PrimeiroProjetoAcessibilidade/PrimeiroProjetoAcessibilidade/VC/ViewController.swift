//
//  ViewController.swift
//  PrimeiroProjetoAcessibilidade
//
//  Created by Jenifer Rocha on 25/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    private var screen: ViewControllerScreen?
    
    override func loadView() {
        screen = ViewControllerScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        configAcessibility()
    }
    
    func configAcessibility() {
        
        // isAccessibilityElement -> Vai ser lido pela acessibilidade
        
        screen?.positionOneLabel.isAccessibilityElement = true
        screen?.positionTwoLabel.isAccessibilityElement = true
        screen?.positionThreeLabel.isAccessibilityElement = true
        screen?.positionFourLabel.isAccessibilityElement = true
        screen?.positionFiveLabel.isAccessibilityElement = true
    }

}

extension ViewController: ViewControllerScreenProtocol {
    func tappedLoginButton() {
        print(#function)
    }
    
    
}


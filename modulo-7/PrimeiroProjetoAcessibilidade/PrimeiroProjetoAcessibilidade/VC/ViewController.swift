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
    }

}

extension ViewController: ViewControllerScreenProtocol {
    func tappedLoginButton() {
        print(#function)
    }
    
    
}


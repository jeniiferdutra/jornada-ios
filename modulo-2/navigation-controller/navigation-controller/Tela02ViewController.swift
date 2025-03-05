//
//  Tela02ViewController.swift
//  navigation-controller
//
//  Created by Jenifer Rocha on 05/03/25.
//

import UIKit

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedGoToScreen2Button(_ sender: UIButton) {
        self.dismiss(animated: true) // ocultar a tela
    }
}

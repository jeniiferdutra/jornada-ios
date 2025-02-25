//
//  ViewController.swift
//  elementos-basicos-curso
//
//  Created by Jenifer Rocha on 24/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bemVindoLabel: UILabel! //acessar programaticamente todas as caracteristicas de uma label
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bemVindoLabel.text = "Teste UILabel"
    }


}


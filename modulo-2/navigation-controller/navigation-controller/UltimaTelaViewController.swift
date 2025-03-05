//
//  UltimaTelaViewController.swift
//  navigation-controller
//
//  Created by Jenifer Rocha on 05/03/25.
//

import UIKit

class UltimaTelaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedGoFirstScreen(_ sender: UIBarButtonItem) {
       // self.navigationController?.popViewController(animated: true) // voltar para a tela anterior
        
        self.navigationController?.popToRootViewController(animated: true) // voltar para a tela inicial
    }
    
}

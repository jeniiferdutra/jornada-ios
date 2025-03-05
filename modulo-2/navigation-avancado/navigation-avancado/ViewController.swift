//
//  ViewController.swift
//  navigation-avancado
//
//  Created by Jenifer Rocha on 05/03/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tappedGoScreenButton(_ sender: UIButton) {
        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC // as? Tela02VC -> estou "afirmando" que o arquivo storyboard é a Tela02VC, como é opcional ele pode me retornar um nil
        
        // MARK: EXIBIR MODAL DE MANEIRA PROGRAMATICA
//        vc?.modalPresentationStyle = .fullScreen // modal preenchida em toda a tela
//
//        self.present(vc ?? UIViewController(), animated: true)
        
        // MARK: NAVIGATION CONTROLLER
        
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}


//
//  ViewController.swift
//  elementos-basicos-curso
//
//  Created by Jenifer Rocha on 24/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bemVindoLabel: UILabel! //acessar programaticamente todas as caracteristicas de uma label. Ligacoes do tipo Outlet permanecemos acima do DidLoad
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bemVindoLabel.text = "Teste UILabel"
    }


    @IBAction func tappedLoginButton(_ sender: UIButton) { // Ligacoes do tipo Action permanecemos abaixo do DidLoad
        print("Botao pressionado")
        view.backgroundColor = .green
    }
    
    
}


//
//  ViewController.swift
//  desafio-tabbar
//
//  Created by Jenifer Rocha on 15/03/25.
//

import UIKit

// MARK: DESAFIO TABBAR
// Crie um tela em um tabBar
// Crie uma uiimage
// Crie 2 botoes
// Crie uma tableView
// Crie uma célula customizavel(.xib)

// Usuário poderá escolher uma foto da galeria ou da camera depois de escrever seu nome ele poderá pressionar sob o adicionar. Quando adicionar, deve aparecer na tableView o nome e a imagem.

class Tela01VC: UIViewController {
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var editPictureButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedEditPictureButton(_ sender: UIButton) {
    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
    }
    
}


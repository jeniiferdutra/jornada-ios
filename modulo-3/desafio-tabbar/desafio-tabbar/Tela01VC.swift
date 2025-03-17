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
        configElements()
        configTableView()
    }
    
    func configElements() {
        nameLabel.text = "Nome:"
        profileImageView.image = UIImage(systemName: "person.circle.fill")
        profileImageView.tintColor = .black
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        //// Define o raio das bordas (corner radius) da imagem do perfil (profileImageView)
        // O valor é igual à metade da altura da imagem (frame.height / 2),
        // isso faz com que a imagem fique perfeitamente redonda (círculo),
        // assumindo que a largura e a altura sejam iguais (quadrada).
        nameTextField.placeholder = "Digite seu nome:"
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

    @IBAction func tappedEditPictureButton(_ sender: UIButton) {
    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
    }
    
}

extension Tela01VC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

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
    
    var data: [Profile] = []
    let imagePicker: UIImagePickerController = UIImagePickerController()// Cria uma instância do UIImagePickerController, que permite ao usuário selecionar uma imagem da galeria ou tirar uma foto com a câmera.
    var alert: AlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = AlertController(controller: self)
        configElements()
        configTableView()
        configImagePicker()
    }
    
    func configImagePicker() {
        imagePicker.delegate = self
        imagePicker.allowsEditing = false // Impede que o usuário edite a imagem antes de selecioná-la
    }
    
    func configElements() {
        view.backgroundColor = .lightGray
        nameLabel.text = "Nome:"
        profileImageView.contentMode = .scaleAspectFill
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

        self.alert?.chooseImage(completion: { option in
            switch option {
            case .camera:
                if UIImagePickerController.isSourceTypeAvailable(.camera) { // Verifica se o dispositivo possui uma câmera disponível
                    self.imagePicker.sourceType = .camera // Se a câmera estiver disponível, define a fonte de dados como a câmera
                } else {    // Caso contrário, usa a galeria de fotos do dispositivo como fonte de dados
                    self.imagePicker.sourceType = .photoLibrary
                }
                //Apresenta o modal para o usuário escolher as imgs da galeria
                self.present(self.imagePicker, animated: true)
            case .library:
                self.imagePicker.sourceType = .photoLibrary
                self.present(self.imagePicker, animated: true)
            case .cancel:
                break
            }
        })
        

    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        if nameTextField.text == "" {
            self.alert?.alertInformation(title: "Atençao!", message: "Por favor, informe o nome!")
        } else {
            data.append(Profile(name: nameTextField.text ?? "", photo: profileImageView.image ?? UIImage()))
            nameTextField.text = "" // Limpa o texto do campo de texto, deixando-o vazio.
            profileImageView.image = UIImage(systemName: "person.circle.fill") // img voltar ao estado normal
            // Atualiza (recarrega) todos os dados exibidos na tableView.
            // Ele força a tableView a chamar novamente seus métodos de data source, como:
            // - numberOfRowsInSection: para saber quantas células deve mostrar.
            // - cellForRowAt: para configurar e exibir cada célula.
            // Deve ser usado sempre que o conteúdo (dados) da tabela mudar, para que a interface mostre as informações atualizadas.
            tableView.reloadData()
        }
    }
    
}

extension Tela01VC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(profile: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

extension Tela01VC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
// Essa função é chamada automaticamente quando o usuário seleciona uma imagem (foto ou da galeria).
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { // informando que a imagem selecionada é uma uiimage
            self.profileImageView.image = image
        }
        picker.dismiss(animated: true)
    }
    
}

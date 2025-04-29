//
//  ViewController.swift
//  navigation-avancado
//
//  Created by Jenifer Rocha on 05/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() { // Disparo unico, primeiro ciclo de vida disparado
        super.viewDidLoad()
        print(#function)
        
    }
    
    override func viewWillAppear(_ animated: Bool) { // Esse metodo vai ser disparado antes da tela estiver pronta. sera usado por ex: atualizar dados antes da tela ser exibida.

        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) { // No momento que a esta esta toda visivel para o usuario. ex de uso: geolocalizacao, capturar a sua devida localizaçao
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) { // Chamado antes da tela desaparecer. ex: Salvar dados ou estado antes de sair
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) { // Chamado depois que a tela desapareceu. ex: Liberar recursos pesados (ex: parar um vídeo).
        print(#function)
    }


    @IBAction func tappedGoScreenButton(_ sender: UIButton) {
        
        // MARK: METODO SIMPLES DE NAVEGACAO
        
//        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC // as? Tela02VC -> estou "afirmando" que o arquivo storyboard é a Tela02VC, como é opcional ele pode me retornar um nil
//        
//        // MARK: EXIBIR MODAL DE MANEIRA PROGRAMATICA
////        vc?.modalPresentationStyle = .fullScreen // modal preenchida em toda a tela
////
////        self.present(vc ?? UIViewController(), animated: true)
//        
//        // MARK: NAVIGATION CONTROLLER
//        
//        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        // MARK: TRANSITANDO DADOS ENTRE TELAS
        
        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(identifier: "Tela02VC") { coder in
            return Tela02VC(coder: coder, name: self.nameTextField.text ?? "")
        }
        
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)

    }
}


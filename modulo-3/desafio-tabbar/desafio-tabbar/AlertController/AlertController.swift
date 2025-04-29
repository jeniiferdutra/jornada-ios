//
//  AlertController.swift
//  desafio-tabbar
//
//  Created by Jenifer Rocha on 18/03/25.
//

import UIKit

enum TypeImageSelected {
    case camera
    case library
    case cancel
}

class AlertController: NSObject {
    
    let controller: UIViewController
    
    init(controller: UIViewController) { // para fazer o present funcionar
        self.controller = controller
    }
    
    func chooseImage(completion: @escaping (_ option: TypeImageSelected) -> Void) { // completion executar uma funcao assíncrona
        
        let allertController: UIAlertController = UIAlertController(title: "Selecione uma das opçoes abaixo", message: nil, preferredStyle: .actionSheet)
        
        let camera = UIAlertAction(title: "Camera", style: .default) { action in
            completion(.camera)
        }
        
        let library = UIAlertAction(title: "Biblioteca", style: .default) { action in
            completion(.library)
        }
        
        let cancel = UIAlertAction(title: "Cancelar", style: .cancel) { action in
            completion(.cancel)
        }
        
        allertController.addAction(camera)
        allertController.addAction(library)
        allertController.addAction(cancel)
        controller.present(allertController, animated: true)
    }
    
    func alertInformation(title: String, message: String) {
        let alertController: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok  = UIAlertAction(title: "Ok", style: .default)
        alertController.addAction(ok)
        controller.present(alertController, animated: true)
    }
}

//
//  Alert.swift
//  PrimeiroAppMVVM
//
//  Created by Jenifer Rocha on 09/04/25.
//

import UIKit

class Alert {
    
    private let controller: UIViewController // criamos uma controller que ela é do tipo UIViewController para conseguirmos acessar o present(...
    
    init(controller: UIViewController) { // Informando para a classe atraves do construtor quem vai ser a tela q vai fazer a exibicao
        self.controller = controller
    }

    public func showAlertInformation(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Ok", style: .default)
        
        alertController.addAction(ok)
        controller.present(alertController, animated: true)
    }
}

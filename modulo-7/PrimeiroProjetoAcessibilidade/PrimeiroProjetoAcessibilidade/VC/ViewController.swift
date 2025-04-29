//
//  ViewController.swift
//  PrimeiroProjetoAcessibilidade
//
//  Created by Jenifer Rocha on 25/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    private var screen: ViewControllerScreen?
    
    override func loadView() {
        screen = ViewControllerScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        configAcessibility()
    }
    
    func configAcessibility() {
        
        // isAccessibilityElement -> Vai ser lido pela acessibilidade
        
        screen?.positionOneLabel.isAccessibilityElement = true
        screen?.positionTwoLabel.isAccessibilityElement = true
        screen?.positionThreeLabel.isAccessibilityElement = true
        screen?.positionFourLabel.isAccessibilityElement = true
        screen?.positionFiveLabel.isAccessibilityElement = true
        screen?.loginButton.isAccessibilityElement = true
        screen?.titleLabel.isAccessibilityElement = true
        screen?.personImageView.isAccessibilityElement = true
        
        // accessibilityLabel -> É o que o VoiceOver irá falar quando o cursor estiver no elemento
        
        screen?.positionOneLabel.accessibilityLabel = "Posiçao um"
        screen?.positionTwoLabel.accessibilityLabel = "Posiçao dois"
        screen?.positionThreeLabel.accessibilityLabel = "Posiçao tres"
        screen?.positionFourLabel.accessibilityLabel = "Posiçao quatro"
        screen?.positionFiveLabel.accessibilityLabel = "Posiçao cinco"
        screen?.personImageView.accessibilityLabel = "Imagem de uma pessoa "
        
        screen?.positionOneLabel.accessibilityTraits = .staticText
        screen?.positionTwoLabel.accessibilityTraits = .staticText
        screen?.positionThreeLabel.accessibilityTraits = .staticText
        screen?.positionFourLabel.accessibilityTraits = .staticText
        screen?.positionFiveLabel.accessibilityTraits = .staticText
        
        screen?.loginButton.accessibilityTraits = .button
        screen?.titleLabel.accessibilityTraits = .header
        screen?.personImageView.accessibilityTraits = .image
        
        guard let primeiro = screen?.positionOneLabel,
              let segundo = screen?.positionTwoLabel,
              let terceiro = screen?.positionThreeLabel,
              let quarto = screen?.positionFourLabel,
              let quinto = screen?.positionFiveLabel,
              let button = screen?.loginButton,
              let title = screen?.titleLabel,
              let image = screen?.personImageView else { return }
        
        // accessibilityElements -> ele ordena os elementos acessiveis
        
        view.accessibilityElements = [image, primeiro, segundo, terceiro, quarto, quinto, button, title]
    }

}

extension ViewController: ViewControllerScreenProtocol {
    func tappedLoginButton() {
        UIAccessibility.post(notification: .announcement, argument: "Teste o botao foi pressionado")
    }
    
    
}


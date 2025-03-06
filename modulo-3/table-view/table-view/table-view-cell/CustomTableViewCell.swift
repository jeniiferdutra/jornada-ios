//
//  CustomTableViewCell.swift
//  table-view
//
//  Created by Jenifer Rocha on 06/03/25.
//

import UIKit

// MARK: - XIB é utilizada para quando criamos células e componentes apartados, coisas mto especificas criamos a xib em uma facil manutencao apenas usado só para aquele devido elemento/tela/funcionalidade

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    // static -> nao necessita de uma instancia, n pode ter nenhuma depedencia externa
    static let identifier: String = "CustomTableViewCell" // nome tem que ser igual do arquivo
    
    static func nib() -> UINib { // nib -> referencia para indicar qual o arquivo da xib
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    // MARK: - CICLO DE VIDA
    
    override func awakeFromNib() { // é a msm coisa do viewDidLoad
        super.awakeFromNib()
        titleLabel.text = "Jenifer"
    }

    
}

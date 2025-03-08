//
//  ColorsTableViewCell.swift
//  desafio-02-tableview
//
//  Created by Jenifer Rocha on 07/03/25.
//

import UIKit

class ColorsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var colorsLabel: UILabel!
    
    static let identifier: String = "ColorsTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(color: String, background: UIColor) {
        colorsLabel.text = color
        contentView.backgroundColor = background
        colorsLabel.textColor = .white
    }
    
}

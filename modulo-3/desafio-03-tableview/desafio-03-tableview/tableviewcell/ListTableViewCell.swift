//
//  ListTableViewCell.swift
//  desafio-03-tableview
//
//  Created by Jenifer Rocha on 09/03/25.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var labelTableView: UILabel!
    
    static let identifier: String = "ListTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(title: String) {
        labelTableView.text = title
    }
    
}

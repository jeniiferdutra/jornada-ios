//
//  TableViewCell.swift
//  desafio-tableview
//
//  Created by Jenifer Rocha on 06/03/25.
//

import UIKit

class TableViewCell: UITableViewCell {
    

    @IBOutlet weak var imageTableView: UIImageView!
    @IBOutlet weak var labelTableView: UILabel!
    
    static let identifier: String = "TableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setupCell(_ data: Car) {
        labelTableView.text = data.brand
        imageTableView.image = data.brandImage
    }
    
}

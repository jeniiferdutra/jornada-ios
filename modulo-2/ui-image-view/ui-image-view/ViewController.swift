//
//  ViewController.swift
//  ui-image-view
//
//  Created by Jenifer Rocha on 27/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoImageView.image = UIImage(systemName: "brain.head.profile")
        logoImageView.tintColor = .red
        logoImageView.contentMode = .scaleAspectFit
    }


}


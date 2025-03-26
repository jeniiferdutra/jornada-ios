//
//  ViewController.swift
//  NotificationCenterEProtocolo
//
//  Created by Jenifer Rocha on 25/03/25.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen: HomeScreen?
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.delegate(delegate: self)
        configObserver()
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateImac(notification:)), name: Notification.Name("imac"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook(notification:)), name: Notification.Name("macbook"), object: nil)
    }
    
    @objc func updateImac(notification: NSNotification) {
        homeScreen?.logoImageView.image = UIImage(named: "imac_pro")
        homeScreen?.descriptionLabel.text = "Imac das galáxias"
        view.backgroundColor = .cyan
    }
    @objc func updateMacbook(notification: NSNotification) {
        homeScreen?.logoImageView.image = UIImage(named: "macbook_pro")
        homeScreen?.descriptionLabel.text = "Macbook Pro"
        view.backgroundColor = .red
    }
}

extension HomeVC: HomeScreenProtocol {
    func tappedChooseButton() {
        let vc = SelectionVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
}

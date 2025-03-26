//
//  SelectionVC.swift
//  NotificationCenterEProtocolo
//
//  Created by Jenifer Rocha on 25/03/25.
//

import UIKit

class SelectionVC: UIViewController {
    
    var selectionScreen: SelectionScreen?
    
    override func loadView() {
        selectionScreen = SelectionScreen()
        view = selectionScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        selectionScreen?.delegate(delegate: self)
    }

}

extension SelectionVC: SelectionScreenProtocol {
    func tappedMacbookButton() {
        print(#function)
        dismiss(animated: true)
    }
    
    func tappedImacButton() {
        print(#function)
        dismiss(animated: true)
    }
    
    
}

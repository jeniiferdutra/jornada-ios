//
//  ViewController.swift
//  uiswitch
//
//  Created by Jenifer Rocha on 27/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var stateSwitch: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        stateSwitch.isOn = true
        stateSwitch.onTintColor = .blue
    }

    
    @IBAction func tappedSwitchAction(_ sender: UISwitch) {
        print(sender.isOn) // capturar o estado do switch
        
        if sender.isOn {
            view.backgroundColor = .green
        } else {
            view.backgroundColor = .red
        }
    }
    
}


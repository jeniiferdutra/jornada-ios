//
//  ViewController.swift
//  uistepper
//
//  Created by Jenifer Rocha on 28/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.minimumValue = 0
        stepper.value = 0 // valor atual
        stepper.maximumValue = 100
        stepper.stepValue = 10
    }

    
    @IBAction func tappedStepper(_ sender: UIStepper) {
        print(sender.value)
        valueLabel.text = String(Int(sender.value))
    }
    
}


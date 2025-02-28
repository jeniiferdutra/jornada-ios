//
//  ViewController.swift
//  uislider
//
//  Created by Jenifer Rocha on 27/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 0 // valor minimo
        slider.value = 0 // valor atual
        slider.maximumValue = 20 // valor maximo
        slider.minimumTrackTintColor = .red // cor minima
        slider.maximumTrackTintColor = .blue // cor maxima
        slider.thumbTintColor = .green // indicador
    }
    
    

    @IBAction func tappedSlider(_ sender: UISlider) {
        print(Int(sender.value))
    }
    
    
}


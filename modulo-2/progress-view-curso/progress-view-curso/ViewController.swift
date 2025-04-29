//
//  ViewController.swift
//  progress-view-curso
//
//  Created by Jenifer Rocha on 27/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressView.tintColor = .green
        progressView.trackTintColor = .lightGray.withAlphaComponent(0.6) // parte da cor que ainda nao esta completa
        let total = Progress(totalUnitCount: 100) // total de repartiçoes
        total.completedUnitCount = 25 // 25% estara completo
        progressView.setProgress(Float(total.fractionCompleted), animated: true) // indica a fraçao que queremos completar o progress
        
    }


}


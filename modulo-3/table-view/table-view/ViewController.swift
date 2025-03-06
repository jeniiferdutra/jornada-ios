//
//  ViewController.swift
//  table-view
//
//  Created by Jenifer Rocha on 06/03/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func configTableView() {
        tableView.delegate = self // self é a propria ViewController, de modo passando todas as responsabilidades para a propria classe
        tableView.dataSource = self
    }


}

// MARK: - PROTOCOLS TABLEVIEW

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // numero de linhas para cada section
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // retorno de uma celula
        return UITableViewCell() // retornando uma celula vazia
    }
    
    
}

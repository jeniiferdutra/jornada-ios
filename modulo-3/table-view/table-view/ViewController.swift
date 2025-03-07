//
//  ViewController.swift
//  table-view
//
//  Created by Jenifer Rocha on 06/03/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var listName: [String] = ["Jenifer", "Lana Del Rey", "Sade", "Duke", "The Weeknd", "Guilherme"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }
    
    // configuracao da tableView
    func configTableView() {
        tableView.delegate = self // self é a propria ViewController, de modo passando todas as responsabilidades para a propria classe
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier) // estamos falando q a nossa xib é o nosso identificador
    }


}

// MARK: - PROTOCOLS TABLEVIEW

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // numero de linhas para cada section
        return listName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // retorno de uma celula
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell // as? significa que estamos trabalhando com CustomTableViewCell
        cell?.setupCell(title: listName[indexPath.row])
        
        return cell ?? UITableViewCell() // cell é opcional por causa do as?, caso a cell é nil retorna uma instancia vazia
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { // identificar quem foi selecionado
        print("O nome que foi selecionado foi \(listName[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { // retorna o tamanho da altura da celula
        return 100
    }
}

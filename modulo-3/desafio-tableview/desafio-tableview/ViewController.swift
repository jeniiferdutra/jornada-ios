//
//  ViewController.swift
//  desafio-tableview
//
//  Created by Jenifer Rocha on 06/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var listCars: [String] = ["Toyota", "Ford", "BMW", "Audi", "Honda"]
    var imageCars: [UIImage] = [
        UIImage(named: "toyota") ?? UIImage(),
        UIImage(named: "ford") ?? UIImage(),
        UIImage(named: "bmw") ?? UIImage(),
        UIImage(named: "audi") ?? UIImage(),
        UIImage(named: "honda") ?? UIImage(),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCars.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.setupCell(title: listCars[indexPath.row], img: imageCars[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { // identificar quem foi selecionado
            print("A marca do carro selecionado foi \(listCars[indexPath.row])")
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

//
//  ViewController.swift
//  desafio-tableview
//
//  Created by Jenifer Rocha on 06/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var listCars: [Car] = [Car(brand: "Toyota", brandImage: UIImage(named: "toyota") ?? UIImage()),
                           Car(brand: "Ford", brandImage: UIImage(named: "ford") ?? UIImage()),
                           Car(brand: "BMW", brandImage: UIImage(named: "bmw") ?? UIImage()),
                           Car(brand: "Audi", brandImage: UIImage(named: "audi") ?? UIImage()),
                           Car(brand: "Honda", brandImage: UIImage(named: "honda") ?? UIImage())]
    
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
        cell?.setupCell(listCars[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { // identificar quem foi selecionado
        print("A marca do carro selecionado foi \(listCars[indexPath.row].brand)")
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

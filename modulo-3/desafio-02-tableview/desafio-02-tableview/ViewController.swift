//
//  ViewController.swift
//  desafio-02-tableview
//
//  Created by Jenifer Rocha on 07/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var nameColors: [String] = ["Preto", "Verde", "Vinho", "Marrom", "Azul", "Cinza", "Vermelho"]
    
    var colors: [UIColor] = [.black, .green, UIColor(red: 0.5, green: 0.0, blue: 0.13, alpha: 1.0), .brown, .blue, .gray, .red]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ColorsTableViewCell.nib(), forCellReuseIdentifier: ColorsTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ColorsTableViewCell.identifier, for: indexPath) as? ColorsTableViewCell
        cell?.setupCell(color: nameColors[indexPath.row], background: colors[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("A cor escolhida foi \(nameColors[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

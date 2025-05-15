//
//  NftDetailScreen.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 10/05/25.
//

import UIKit

class NftDetailScreen: UIView {

    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(NftImageTableViewCell.self, forCellReuseIdentifier: NftImageTableViewCell.identifier)
        tableView.register(NftDescriptionTableViewCell.self, forCellReuseIdentifier: NftDescriptionTableViewCell.identifier)
        tableView.register(LastestDealTableViewCell.self, forCellReuseIdentifier: LastestDealTableViewCell.identifier)
        tableView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 26/255, alpha: 1.0)
        tableView.separatorStyle = .none
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    public func configTableViewProtocol(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    private func addViews() {
        addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

}

//
//  LastestDealTableViewCell.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 13/05/25.
//

import UIKit

class LastestDealTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: LastestDealTableViewCell.self)
    
    var viewModel: LastestDealTableViewCellViewModel = LastestDealTableViewCellViewModel()
    
    lazy var screen: LastestDealTableViewCellScreen = {
        let view = LastestDealTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        contentView.addSubview(screen)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            screen.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    public func setupCell(data: Nft) {
        viewModel.setNft(nft: data)
        screen.titleLabel.text = viewModel.title
        screen.configTableViewProtocols(delegate: self, dataSource: self)
    }

}

extension LastestDealTableViewCell: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ListOffersTableViewCell.identifier, for: indexPath) as? ListOffersTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentLatestDeal(indexPath: indexPath), isInicial: viewModel.isInicial(indexPath: indexPath), isFinal: viewModel.isFinal(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}

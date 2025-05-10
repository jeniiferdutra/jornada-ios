//
//  NftDetailVC.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 10/05/25.
//

import UIKit

class NftDetailVC: UIViewController {
    
    private var screen: NftDetailScreen?
    private let viewModel: NftDetailViewModel
    
    override func loadView() {
        screen = NftDetailScreen()
        view = screen
    }
    
    required init(nft: Nft) { // somente um dado
        viewModel = NftDetailViewModel(nft: nft)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad() // Trabalhar de forma sincrona pq nao vai fazer nenhuma requisicao
        screen?.configTableViewProtocol(delegate: self, dataSource: self)
    }
}

extension NftDetailVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
}

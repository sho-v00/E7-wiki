//
//  WikiViewController.swift
//  E7-wiki
//
//  Created by Shota Ito on 2020/01/26.
//  Copyright © 2020 Shota Ito. All rights reserved.
//

import UIKit
import SnapKit

final class WikiViewController: UIViewController {
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "E7 Wiki"
        view = tableView
    }

}

extension WikiViewController: UITableViewDelegate {

}

extension WikiViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}


//
//  Home2ViewController.swift
//  E7-wiki
//
//  Created by Shota Ito on 2020/01/26.
//  Copyright © 2020 Shota Ito. All rights reserved.
//

import UIKit
import SnapKit

final class Home2ViewController: UIViewController {
    let titleName: String

    init(titleName: String) {
        self.titleName = titleName
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    private lazy var container: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor.yellow
        return container
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = titleName
        self.view.addSubview(container)
        container.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

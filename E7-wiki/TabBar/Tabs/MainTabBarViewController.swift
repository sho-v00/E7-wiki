//
//  MainTabBarViewController.swift
//  E7-wiki
//
//  Created by Shota Ito on 2020/01/26.
//  Copyright © 2020 Shota Ito. All rights reserved.
//

import UIKit

final class MainTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let vc = HomeViewController()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        let nv = UINavigationController(rootViewController: vc)
        let vc2 = ItemViewController()
        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        let nv2 = UINavigationController(rootViewController: vc2)
        setViewControllers([nv, nv2], animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

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

        initNavigation()
    }
    
    private func initNavigation() {
        // home
        let home = HomeViewController()
        home.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        let nvHome = UINavigationController(rootViewController: home)
        
        // wiki
        let wiki = WikiViewController()
        wiki.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        let nvWiki = UINavigationController(rootViewController: wiki)
        
        // item
        let item = ItemViewController()
        item.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 3)
        let nvItem = UINavigationController(rootViewController: item)
        
        // camp
        let camp = CampingViewController()
        camp.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 4)
        let nvCamp = UINavigationController(rootViewController: camp)
        
        // Update
        let update = UpdateViewController()
        update.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 5)
        let nvUpdate = UINavigationController(rootViewController: update)
        
        
        // tabs
        setViewControllers([nvHome, nvWiki, nvItem, nvCamp, nvUpdate], animated: false)
    }
}

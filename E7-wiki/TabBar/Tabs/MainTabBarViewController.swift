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
        home.tabBarItem = UITabBarItem(title: "Home", image: R.image.tab_off(), selectedImage: R.image.tab_on())
        let nvHome = UINavigationController(rootViewController: home)
        
        // wiki
        let wiki = WikiViewController()
        wiki.tabBarItem = UITabBarItem(title: "Wiki", image: R.image.tab_off(), selectedImage: R.image.tab_on())
        let nvWiki = UINavigationController(rootViewController: wiki)
        
        // item
        let item = ItemViewController()
        item.tabBarItem = UITabBarItem(title: "Item", image: R.image.tab_off(), selectedImage: R.image.tab_on())
        let nvItem = UINavigationController(rootViewController: item)
        
        // camp
        let camp = CampingViewController()
        camp.tabBarItem = UITabBarItem(title: "Camp", image: R.image.tab_off(), selectedImage: R.image.tab_on())
        let nvCamp = UINavigationController(rootViewController: camp)
        
        // Update
        let update = UpdateViewController()
        update.tabBarItem = UITabBarItem(title: "Update", image: R.image.tab_off(), selectedImage: R.image.tab_on())
        let nvUpdate = UINavigationController(rootViewController: update)
        
        
        // tabs
        setViewControllers([nvHome, nvWiki, nvItem, nvCamp, nvUpdate], animated: false)
    }
}

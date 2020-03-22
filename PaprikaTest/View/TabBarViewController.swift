//
//  TabBarViewController.swift
//  PaprikaTest
//
//  Created by Gun Eight  on 21/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create popularTabBar
        let popularTabBar = PopularMovieViewController()
        let popularTabBarItem = UITabBarItem(title: "Popular", image: UIImage(named: "popularIcon.png"), selectedImage: UIImage(named: "popularIcon.png"))
        
        popularTabBar.tabBarItem = popularTabBarItem
        
        // Create favoriteTabBar
        let favoriteTabBar = FavoriteMovieViewController()
        let favoriteTabBarItem = UITabBarItem(title: "Favorites", image: UIImage(named: "favoriteIcon.png"), selectedImage: UIImage(named: "favoriteIcon.png"))
        
        favoriteTabBar.tabBarItem = favoriteTabBarItem
        UITabBar.appearance().tintColor = colorHelper.colorCaption
        UITabBar.appearance().backgroundColor = colorHelper.backgroundBlue
        tabBar.isTranslucent = false
        tabBar.barTintColor = colorHelper.backgroundBlue
  
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Helvetica", size: 12)!], for: .normal)
        self.viewControllers = [popularTabBar, favoriteTabBar]
    }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("\(tabBarItem.title)")
    }
    
    
}

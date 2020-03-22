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
        UITabBar.appearance().tintColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        UITabBar.appearance().backgroundColor = #colorLiteral(red: 0.2458193898, green: 0.2900034189, blue: 0.4485326409, alpha: 1)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Helvetica", size: 12)!], for: .normal)
        
        self.viewControllers = [popularTabBar, favoriteTabBar]
    }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("\(tabBarItem.title)")
    }
    
    
}

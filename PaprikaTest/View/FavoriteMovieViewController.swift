//
//  FavoriteMovieViewController.swift
//  PaprikaTest
//
//  Created by Gun Eight  on 21/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class FavoriteMovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.layoutIfNeeded()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - SetupUI
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.2470588235, green: 0.2901960784, blue: 0.4470588235, alpha: 1)
        
        let width = self.view.frame.width
        let startingYPos = UIApplication.shared.statusBarFrame.size.height
        let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: startingYPos, width: width, height: 44))
        self.view.addSubview(navigationBar)
        UIHelper.setupNavBar(navigationBar: navigationBar, title: "MOVIE")
    }

   

}

extension FavoriteMovieViewController{
    
    
}

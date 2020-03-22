//
//  PopularMovieViewController.swift
//  PaprikaTest
//
//  Created by Gun Eight  on 21/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class PopularMovieViewController: UIViewController {
    let popularMovieTable = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        
    }
    
    // MARK: - setuoUI
    
    func setupUI(){
        view.layoutIfNeeded()
        popularMovieTable.register(PopularMovieCell.self, forCellReuseIdentifier: "popularMovieCell")
    }
}

    // MARK: - extension
extension PopularMovieViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "popularMovieCell", for: indexPath) as! PopularMovieCell
        return cell
    }
    
    
}




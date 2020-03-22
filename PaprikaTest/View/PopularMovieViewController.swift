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
        popularMovieTable.delegate = self
        popularMovieTable.dataSource = self
      
        
    }
    
    // MARK: - setuoUI
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.2458193898, green: 0.2900034189, blue: 0.4485326409, alpha: 1)
        view.layoutIfNeeded()
        popularMovieTable.register(PopularMovieCell.self, forCellReuseIdentifier: "popularMovieCell")
        
        view.addSubview(popularMovieTable)
        UIHelper.makeTableView(tableView: popularMovieTable, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, bottomAnchor: view.safeAreaLayoutGuide.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, bottomConstant: 0, separatorStyle: .singleLine, showsVerticalScrollIndicator: true, backgroundColor: colorHelper.whiteColor)
        
        let screenSize: CGRect = UIScreen.main.bounds
        let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width , height: 44))
        view.addSubview(navigationBar)
        UIHelper.setupNavBar(navigationBar: navigationBar, title: "MOVIE")
    }
   
    
    
    
}

    // MARK: - extension
extension PopularMovieViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "popularMovieCell", for: indexPath) as! PopularMovieCell
        cell.backgroundColor = colorHelper.whiteColor
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
    
    
}




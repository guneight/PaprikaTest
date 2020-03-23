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
    var popularVM : PopularMovieViewMode!
    var popularMovies : Movie?
    var result : Result?
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataFromApi()
        setupUI()
        popularMovieTable.delegate = self
        popularMovieTable.dataSource = self
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getDataFromApi()
    }
    
    // MARK: - setuoUI
    
    func setupUI(){
       
        view.backgroundColor = colorHelper.backgroundColor
        view.layoutIfNeeded()
        popularMovieTable.register(PopularMovieCell.self, forCellReuseIdentifier: "popularMovieCell")
        
        let width = self.view.frame.width
        let startingYPos = UIApplication.shared.statusBarFrame.size.height
        let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: startingYPos, width: width, height: 44))
        self.view.addSubview(navigationBar)
        UIHelper.setupNavBar(navigationBar: navigationBar, title: "MOVIE")
       
        
        view.addSubview(popularMovieTable)
        UIHelper.makeTableView(tableView: popularMovieTable, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: navigationBar.bottomAnchor, bottomAnchor: view.safeAreaLayoutGuide.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, bottomConstant: 0, separatorStyle: .singleLine, showsVerticalScrollIndicator: true, backgroundColor: colorHelper.whiteColor)
        
        
    }
   
    
    
    
}

    // MARK: - extension
extension PopularMovieViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return popularMovies?.results.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "popularMovieCell", for: indexPath) as! PopularMovieCell
        cell.backgroundColor = colorHelper.whiteColor
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.titleMovieLabel.text = popularMovies?.results[indexPath.row].title
        let releaseDate = "\(popularMovies?.results[indexPath.row].releaseDate ?? " ")"
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let date = formatter.date(from: releaseDate) ?? Date()
        formatter.dateFormat = "yyyy"
        let year = formatter.string(from: date)
        print("year \(year)")
        cell.yearMovieLabel.text = year

        
        cell.synopsisLabel.text = popularMovies?.results[indexPath.row].overview
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
    
    
}




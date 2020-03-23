//
//  FavoriteMovieViewController.swift
//  PaprikaTest
//
//  Created by Gun Eight  on 21/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class FavoriteMovieViewController: UIViewController {
    var searchBar = UISearchBar()
    var movieCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 0, right:10 )
        let cvPromo = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cvPromo.register(FavoritesMovieCollectionViewCell.self, forCellWithReuseIdentifier: "cellFavorites")
        cvPromo.backgroundColor = UIColor.white
        return cvPromo
    }()
    
    var favoritesMovies : Movie?
    var searchMovies : Movie?
    var isSearching : Bool = false
    var movieSearch : [Result] = []
    var MovieSearch : [Result] = []
    var movieRow : Int = 0
 
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataFromApi()
        setupUI()
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        searchBar.delegate = self
        view.layoutIfNeeded()
         searchBarTextDidBeginEditing(searchBar)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getDataFromApi()
    }
    
    // MARK: - SetupUI
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.2470588235, green: 0.2901960784, blue: 0.4470588235, alpha: 1)
        let width = view.frame.width
        let startingYPos = UIApplication.shared.statusBarFrame.size.height
        let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: startingYPos, width: width, height: 44))
        self.view.addSubview(navigationBar)
        UIHelper.setupNavBar(navigationBar: navigationBar, title: "MOVIE")
        
        view.addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            searchBar.topAnchor.constraint(equalTo: navigationBar.bottomAnchor)
        ])
        searchBar.placeholder = "Search for title"
        
        searchBar.backgroundColor = colorHelper.whiteColor
        searchBar.barTintColor = colorHelper.whiteColor
        
        view.addSubview(movieCollectionView)
        UIHelper.makeCollectionView(collectionView: movieCollectionView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: searchBar.bottomAnchor, bottomAnchor: view.safeAreaLayoutGuide.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, bottomConstant: 0, scrollEnable: true, showsVerticalScrollIndicator: false, showHorizontalScrollIndicator: false, backgroundColor: colorHelper.whiteColor)
    
        let tapGesture  = UITapGestureRecognizer(target: self, action:#selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
 
}


 // MARK: - extension collectionView
extension FavoriteMovieViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favoritesMovies?.results.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cellFavorites", for: indexPath) as! FavoritesMovieCollectionViewCell
        cell.backgroundColor  = colorHelper.whiteColor
        cell.titleMovieLabel.text = favoritesMovies?.results[indexPath.row].title 
        let urlImage = "\(favoritesMovies?.results[indexPath.row].posterPath ?? " ")"
        downloadImageFromUrl(url: urlImage, imageView: cell.movieImage)
        print("urlImage : \(urlImage)")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width
        print("width: \(width)")
        return CGSize(width: width*0.5-20, height: width*0.7)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layoutcollectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       return 13
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        
    }
    
}


//
//  searchModel.swift
//  PaprikaTest
//
//  Created by Gun Eight  on 23/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension FavoriteMovieViewController : UISearchBarDelegate {
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        dismissKeyboard()
        dismiss(animated: true, completion: nil)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if !searchBar.isFirstResponder {
            isSearching = false
        }
        guard !searchText.isEmpty else {
            movieSearch = []
            reloadCollection()
            return
        }
        movieSearch = MovieSearch.filter({ movies-> Bool in
            (movies.title.lowercased().contains(searchText.lowercased()))
        })
        
        reloadCollection()
    }
    
    func reloadCollection() {
        movieRow = movieSearch.count
        movieCollectionView.reloadData()
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        isSearching = true
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        isSearching = false
        dismissKeyboard()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        isSearching = false
    }
    
    func dismissTap() -> UITapGestureRecognizer {
        return UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
        
    }
}



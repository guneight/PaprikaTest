//
//  APIControl.swift
//  PaprikaTest
//
//  Created by Gun Eight  on 22/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension PopularMovieViewController {
    func getDataFromApi(){
        let session = URLSession(configuration: .default)
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=bc598f0ffe6861632334b53d1b633d2c")
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            if let response = response {
                print("Response:\(response)")
            }
            guard let data = data else { return }
            
            do {
                let json = JSONDecoder()
                self.popularMovies = try json.decode(Movie.self, from : data)
                print("Popular Moview :\(self.popularMovies)")
                DispatchQueue.main.async {
                    self.popularMovieTable.reloadData()
                }
            }catch{
                print(error.localizedDescription)
            }
        }
        dataTask.resume()
    }
}

func downloadImageFromUrl(url : String, imageView: UIImageView) {
    if url != "" {
        let session = URLSession(configuration: .default)
        let imageUrl = URL(string: url)
        let dataTask = session.dataTask(with: imageUrl!) {(data, response, error) in
            if let data = data {
                DispatchQueue.main.async {
                    imageView.image = UIImage(data: data)
                }
            }
        }
        dataTask.resume()
    }
}


extension FavoriteMovieViewController{
     func getDataFromApi(){
            let session = URLSession(configuration: .default)
            let url = URL(string: "https://api.themoviedb.org/3/movie/top_rated?api_key=bc598f0ffe6861632334b53d1b633d2c&language=en-US&page=1")
            let dataTask = session.dataTask(with: url!) { (data, response, error) in
                if let error = error {
                    print(error.localizedDescription)
                }
                if let response = response {
                    print("Response:\(response)")
                }
                guard let data = data else { return }

                do {
                    let json = JSONDecoder()
                    self.favoritesMovies = try json.decode(Movie.self, from : data)
                    print("Popular Moview :\(self.favoritesMovies)")
                    DispatchQueue.main.async {
                        self.movieCollectionView.reloadData()
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
            dataTask.resume()
        }
    

    func downloadImageFromUrl(url: String, imageView: UIImageView) {
        if url != "" {
            let part1Url = "https://image.tmdb.org/t/p/w500"
            let url2 = part1Url+url
            let session = URLSession(configuration: .default)
            let imageUrl = URL(string: url2)
            print("url3 : \(url2)")
            let dataTask = session.dataTask(with: imageUrl!) {(data, response, error) in
                if let data = data {
                    DispatchQueue.main.async {
                        imageView.image = UIImage(data: data)
                    }
                }
            }
            
            dataTask.resume()
        }
    }


    func getDataFromApiSearch(){
            let session = URLSession(configuration: .default)
            let url = URL(string: "https://api.themoviedb.org/3/movie/top_rated?api_key=bc598f0ffe6861632334b53d1b633d2c&language=en-US&page=1")
            let dataTask = session.dataTask(with: url!) { (data, response, error) in
                if let error = error {
                    print(error.localizedDescription)
                }
                if let response = response {
                    print("Response:\(response)")
                }
                guard let data = data else { return }

                do {
                    let json = JSONDecoder()
                    self.favoritesMovies = try json.decode(Movie.self, from : data)
                    print("Popular Moview :\(self.favoritesMovies)")
                    DispatchQueue.main.async {
                        self.movieCollectionView.reloadData()
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
            dataTask.resume()
        }
    
}

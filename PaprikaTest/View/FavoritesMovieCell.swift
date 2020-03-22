//
//  FavoritesMovieCell.swift
//  PaprikaTest
//
//  Created by Gun Eight  on 22/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class FavoritesMovieCollectionViewCell : UICollectionViewCell {
        
    var movieImage = UIImageView()
    var titleMovieLabel = UILabel()
    var favoritesIconImage = UIImageView()
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           addViews()
       }
    func addViews(){
        let width = UIScreen.main.bounds.width
        backgroundColor = .white
        layer.masksToBounds = true
        layer.cornerRadius = 10
        addSubview(movieImage)
        UIHelper.makeImageView(imageView: movieImage, leadingAnchor: leadingAnchor, topAnchor: topAnchor, leadingConstant: 0, topConstant: 0, corner: 10, heightAnchor: width*0.8, widthAnchor: width*0.5-20, backgroundColor: colorHelper.textBodyColor)
        
        addSubview(titleMovieLabel)
        UIHelper.makeLabel(label: titleMovieLabel, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor, topAnchor: bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: -30, corner: 0, heightAnchor: 30, backgroundColor: colorHelper.captionColor)
        
        addSubview(favoritesIconImage)
        UIHelper.makeImageView(imageView: favoritesIconImage, leadingAnchor: leadingAnchor, topAnchor: topAnchor, leadingConstant: width*0.5-45, topConstant: width*0.8-25, corner: 0, heightAnchor: 15, widthAnchor: 15, backgroundColor: colorHelper.backgroundColor)
        
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
}

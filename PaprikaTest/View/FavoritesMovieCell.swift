//
//  FavoritesMovieCell.swift
//  PaprikaTest
//
//  Created by Gun Eight  on 22/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class FavoritesMovieCollectionViewCell : UICollectionViewCell {
    var titleBackground = UIView()
    var movieImage = UIImageView()
    var titleMovieLabel = UILabel()
    var favoritesIconImage = UIImageView()
    var buttonFlag = 0
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           addViews()
       }
    func addViews(){
        let width = UIScreen.main.bounds.width
        backgroundColor = .red
        layer.masksToBounds = true
        layer.cornerRadius = 10
        
        addSubview(movieImage)
        UIHelper.makeImageView(imageView: movieImage, leadingAnchor: leadingAnchor, topAnchor: topAnchor, leadingConstant: 0, topConstant: 0, corner: 10, heightAnchor: width*0.67, widthAnchor: frame.size.width, backgroundColor: .clear)
        movieImage.contentMode = .scaleToFill
        
        addSubview(titleBackground)
        UIHelper.makeView(view: titleBackground, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor, topAnchor: bottomAnchor, bottomAnchor: bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: -40, bottomConstant: 0, cornerRadius: 0, backgroundColor: colorHelper.captionColor)
        
        addSubview(titleMovieLabel)
        UIHelper.makeLabel(label: titleMovieLabel, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor, topAnchor: bottomAnchor, leadingConstant: 10, trailingConstant: -30, topConstant: -40, corner: 0, heightAnchor: 40, backgroundColor: colorHelper.captionColor)
        titleMovieLabel.numberOfLines = 0
        
        UIHelper.setTextLabel(label: titleMovieLabel, fontName: "Arial", allignment: .center, fontColor: colorHelper.CollectionLabelColor, weight: .bold, fontSize: 12, text: " ", kerning: 0)
        
        addSubview(favoritesIconImage)
        UIHelper.makeImageView(imageView: favoritesIconImage, leadingAnchor: leadingAnchor, topAnchor: topAnchor, leadingConstant: frame.size.width-25, topConstant: frame.size.height-25, corner: 0, heightAnchor: 15, widthAnchor: 15, backgroundColor: .clear)
        favoritesIconImage.contentMode = .scaleAspectFit
        favoritesIconImage.image = UIImage(named: "favoritIcon")
    }
   
    
    
    required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
}

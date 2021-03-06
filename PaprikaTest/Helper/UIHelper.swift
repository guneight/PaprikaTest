//
//  UIHelper.swift
//  PaprikaTest
//
//  Created by Gun Eight  on 22/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

struct UIHelper {
    static let widthScreen = UIScreen.main.bounds.width
    static let heightScreen = UIScreen.main.bounds.height
    
    static func makeTableView (tableView: UITableView, leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,trailingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, bottomAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor> ,leadingConstant: CGFloat, trailingConstant: CGFloat, topConstant: CGFloat, bottomConstant: CGFloat, separatorStyle : UITableViewCell.SeparatorStyle, showsVerticalScrollIndicator : Bool, backgroundColor : UIColor){
        
        tableView.translatesAutoresizingMaskIntoConstraints  = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
            tableView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
        ])
        tableView.clipsToBounds = true
        tableView.separatorStyle = separatorStyle
        tableView.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        tableView.backgroundColor = backgroundColor
        tableView.layoutIfNeeded()
        
    }
    
    static func makeCollectionView(collectionView : UICollectionView,leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,trailingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, bottomAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor> ,leadingConstant: CGFloat, trailingConstant: CGFloat, topConstant: CGFloat, bottomConstant: CGFloat, scrollEnable:Bool, showsVerticalScrollIndicator : Bool,showHorizontalScrollIndicator: Bool, backgroundColor : UIColor){
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
        ])
        
        collectionView.isScrollEnabled = scrollEnable
        collectionView.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        collectionView.showsHorizontalScrollIndicator = showHorizontalScrollIndicator
        collectionView.backgroundColor = backgroundColor
        collectionView.layoutIfNeeded()
    }
    
    static func makeView(view : UIView,leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,trailingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, bottomAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor> ,leadingConstant: CGFloat, trailingConstant: CGFloat, topConstant: CGFloat, bottomConstant: CGFloat, cornerRadius:CGFloat,backgroundColor : UIColor){
        
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
        ])
        
        view.layer.masksToBounds = true
        view.layer.cornerRadius = cornerRadius
        view.backgroundColor = backgroundColor
        view.layoutIfNeeded()
    }
    
    static func makeLabel(label : UILabel, leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>, trailingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, trailingConstant: CGFloat, topConstant: CGFloat, corner : CGFloat, heightAnchor : CGFloat, backgroundColor: UIColor){
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            label.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            label.heightAnchor.constraint(equalToConstant: heightAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant)
        ])
        label.backgroundColor = backgroundColor
        label.layer.masksToBounds = true
        label.layer.cornerRadius = corner
        label.layoutIfNeeded()
    }
    
    static func makeImageView(imageView : UIImageView, leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, topConstant: CGFloat, corner : CGFloat, heightAnchor : CGFloat, widthAnchor: CGFloat, backgroundColor : UIColor){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            imageView.heightAnchor.constraint(equalToConstant: heightAnchor),
            imageView.widthAnchor.constraint(equalToConstant: widthAnchor)
        ])
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = corner
        imageView.backgroundColor = backgroundColor
        imageView.contentMode = .scaleAspectFit
        imageView.layoutIfNeeded()
    }
    
    static func setTextLabel(label : UILabel, fontName : String!, allignment: NSTextAlignment, fontColor : UIColor, weight : UIFont.Weight,fontSize: CGFloat, text : String, kerning : CGFloat){
        label.attributedText = NSAttributedString(string: text, attributes: [.kern: kerning])
        label.textColor = fontColor
        label.font = UIFont(name: fontName, size: fontSize)
        label.textAlignment = allignment
    }
    
    static func setupNavBar(navigationBar: UINavigationBar, title : String){
        let navigationItem = UINavigationItem(title: title)
        navigationBar.setItems([navigationItem], animated: false)
        navigationBar.barTintColor = colorHelper.backgroundColor
        navigationBar.tintColor = colorHelper.backgroundColor
        UINavigationBar.appearance().isTranslucent = false
        let logo = UIImage(named: "appIcon2")
        let imageView = UIImageView(image:logo)
        imageView.contentMode = .center
        navigationItem.titleView = imageView
        
        
    }
}


struct colorHelper {
    static var headerColor : UIColor{
        return #colorLiteral(red: 0.2235294118, green: 0.2235294118, blue: 0.2235294118, alpha: 1)
    }
    
    static var textBodyColor : UIColor{
        return #colorLiteral(red: 0.2235294118, green: 0.2235294118, blue: 0.2235294118, alpha: 0.8)
    }
    
    static var captionColor : UIColor{
        return #colorLiteral(red: 0.3647058824, green: 0.2941176471, blue: 0.1215686275, alpha: 1)
    }
    
    static var whiteColor : UIColor{
        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    static var backgroundColor : UIColor{
        return #colorLiteral(red: 0.2470588235, green: 0.2901960784, blue: 0.4470588235, alpha: 1)
    }
    
    static var tabbarItemColor : UIColor{
        return #colorLiteral(red: 0.9607843137, green: 0.6509803922, blue: 0.137254902, alpha: 1)
    }
    
    static var CollectionLabelColor : UIColor{
           return #colorLiteral(red: 0.9803921569, green: 0.8039215686, blue: 0.1843137255, alpha: 1)
       }
       
    
}

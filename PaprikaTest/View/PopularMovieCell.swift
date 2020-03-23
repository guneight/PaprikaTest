//
//  PopularMovieCell.swift
//  PaprikaTest
//
//  Created by Gun Eight  on 22/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class PopularMovieCell: UITableViewCell {
    let containerMovieView = UIView()
    let titleMovieLabel = UILabel()
    let yearMovieLabel = UILabel()
    let synopsisLabel = UILabel()
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(containerMovieView)
        UIHelper.makeView(view: containerMovieView, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, bottomAnchor: contentView.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, bottomConstant: 0, cornerRadius: 10, backgroundColor: colorHelper.whiteColor )
        let widthCell = contentView.frame.size.width
        containerMovieView.addSubview(titleMovieLabel)
        UIHelper.makeLabel(label: titleMovieLabel, leadingAnchor: containerMovieView.leadingAnchor, trailingAnchor: containerMovieView.trailingAnchor, topAnchor: containerMovieView.topAnchor, leadingConstant: 20, trailingConstant: -(widthCell*0.4), topConstant: 10, corner: 0, heightAnchor: 16, backgroundColor:colorHelper.whiteColor )
        
        UIHelper.setTextLabel(label: titleMovieLabel, fontName: "Arial", allignment: .left, fontColor: colorHelper.headerColor, weight: .medium, fontSize: 12, text: "Zootopia", kerning: 0)
        
        containerMovieView.addSubview(yearMovieLabel)
        UIHelper.makeLabel(label: yearMovieLabel, leadingAnchor: titleMovieLabel.trailingAnchor, trailingAnchor: containerMovieView.trailingAnchor, topAnchor: containerMovieView.topAnchor, leadingConstant: 0, trailingConstant: -30, topConstant: 10, corner: 0, heightAnchor: 16, backgroundColor:colorHelper.whiteColor )
               
        UIHelper.setTextLabel(label: yearMovieLabel, fontName: "Arial", allignment: .right, fontColor: colorHelper.headerColor, weight: .medium, fontSize: 12, text: "2016", kerning: 0)
        
        containerMovieView.addSubview(synopsisLabel)
        UIHelper.makeLabel(label: synopsisLabel, leadingAnchor: containerMovieView.leadingAnchor, trailingAnchor: containerMovieView.trailingAnchor, topAnchor: titleMovieLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -30, topConstant: 10, corner: 0, heightAnchor: 36,  backgroundColor:colorHelper.whiteColor )
               
        UIHelper.setTextLabel(label: synopsisLabel, fontName: "Arial", allignment: .left, fontColor: colorHelper.textBodyColor, weight: .medium, fontSize: 10, text: "Determined to prove herself, Officer Judy Hopps, the first bunny on Zootopia's police force, jumps at the chancetocrack herfirst case- evenifitmeanspar. Determined to prove herself, Officer Judy Hopps, the first bunny on Zootopia's police force, jumps at the chancetocrack herfirst case- evenifitmeanspar", kerning: 0)
        synopsisLabel.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}

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
    let popularMovieTBC = UITableViewCell()
    let titleMovieLabel = UILabel()
    let yearMovieLabel = UILabel()
    let synopsisLabel = UILabel()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(containerMovieView)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}

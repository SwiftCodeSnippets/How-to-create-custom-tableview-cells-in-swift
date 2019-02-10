//
//  MovieTableViewCell.swift
//  MoviesList
//
//  Created by Niso on 12/20/18.
//  Copyright © 2018 Niso. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    // Setup movies values
    func setCellWithValuesOf(_ movie: Movie) {
        movieTitle.text = movie.title
        movieImage.image = movie.image
    }
    

}

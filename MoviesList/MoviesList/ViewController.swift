//
//  ViewController.swift
//  MoviesList
//
//  Created by Niso on 12/20/18.
//  Copyright © 2018 Niso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var moviesData = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        createMoviesData()
    }
    
    // Create movies data
    func createMoviesData() {
        moviesData.append(Movie(title: "Black Panther", image: #imageLiteral(resourceName: "BlackPanther")))
        moviesData.append(Movie(title: "Mission: Impossible - Fallout", image: #imageLiteral(resourceName: "MissionImpossibleFallout")))
        moviesData.append(Movie(title: "Avengers: Infinity War", image: #imageLiteral(resourceName: "AvengersInfinityWar")))
        moviesData.append(Movie(title: "A Star Is Born", image: #imageLiteral(resourceName: "AStarIsBorn")))
        moviesData.append(Movie(title: "Deadpool 2", image: #imageLiteral(resourceName: "Deadpool2")))
    }
    
    // TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let movie = moviesData[indexPath.row]
        if let movieCell = cell as? MovieTableViewCell {
            movieCell.setCellWithValuesOf(movie)
        }
        
        return cell
    }


}


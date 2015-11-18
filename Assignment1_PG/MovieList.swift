//
//  MovieList.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 5/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//

import Foundation

struct MovieList {
    // Stored properties
    var movieList:[Movies]
    var selectedMovies:[Movies]
    
    init(){
        movieList = Movies.getMovies()
        selectedMovies = [Movies]()
    }
}
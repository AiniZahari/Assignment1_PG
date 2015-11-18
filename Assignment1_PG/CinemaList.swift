//
//  CinemaList.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 5/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//

import Foundation

struct CinemaList{
    // Stored properties
    var cinemaList:[Cinemas]
    var selectedCinemas:[Cinemas]
    
    init(){
        cinemaList = Cinemas.getCinemas()
        selectedCinemas = [Cinemas]()
        println()
    }
}
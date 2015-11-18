//
//  Model.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 5/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//

import Foundation

class Model {
    var currentCinema:Cinemas = Cinemas.MV;
    var cinemaList:CinemaList
    
    init(){
        cinemaList = CinemaList()
    }
}

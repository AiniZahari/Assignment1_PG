//
//  ModelViewController.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 9/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//


import Foundation
import UIKit

class MovieDetailsController: UIViewController
{
    var movieName:String?
    @IBOutlet weak var lblname: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //image.image = UIImage(named: cardName! + ".jpg")
        lblname.text = movieName
        println()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

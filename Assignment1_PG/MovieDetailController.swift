//
//  MovieDetailController.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 9/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//

import Foundation
import UIKit

class MovieDetailController: UIViewController
{
    var movieL = ModelMovies().movieList
    var movieName:String?
    var imageName:String?
    var movieShowtime:String?
    
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var txvsynopsis: UITextView!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: imageName! + ".jpg")
        lblname.text = movieName
        txvsynopsis.text = movieShowtime
        println()
    }
    
    func buyTicket(sender: UIButton!){
        self.performSegueWithIdentifier("BookingDetail", sender: sender)
    }
    
    func movieReview(sender: UIButton!){
        self.performSegueWithIdentifier("MovieDetail", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "BookingDetail"){
            let BookingController = segue.destinationViewController as UIViewController
            let destinationTitle = "Ticket Purchase"
            BookingController.title = destinationTitle
            var bookDetails = segue.destinationViewController as BookingDetailViewController
            bookDetails.movieName = movieName
        } else {
            let MovieDController = segue.destinationViewController as UIViewController
            let destinationTitle = "Movie Review"
            MovieDController.title = destinationTitle
            var movieDetails = segue.destinationViewController as MovieReviewController
            movieDetails.movieName = movieName
            //movieDetails.image = movieName
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

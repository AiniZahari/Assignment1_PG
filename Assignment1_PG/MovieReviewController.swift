//
//  MovieReviewController.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 11/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//

import Foundation
import UIKit

class MovieReviewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var movieName:String?
    var review:String?
    var ratingS:String?
    var ComRat:String?
    let movieRate = ["💜", "💜💜", "💜💜💜", "💜💜💜💜"]
    
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var rating: UIPickerView!
    @IBOutlet weak var reviewList: UITextView!
    @IBOutlet weak var addReview: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblname.text = movieName
        println()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        let row = rating.selectedRowInComponent(0)
        let ratingSelected = movieRate[row]
        let mName = movieName
        let comment = addReview.text
        var list = reviewList.text
        
        let title = "-= Rating has been added =- \n "
        
        let alert = UIAlertController(
            title: title,
            message: "Thank you for your contribution. Rating: \(ratingSelected)\n Comment: \(comment!)",
            preferredStyle: .Alert)
        
        let action = UIAlertAction(
            title: "Close this pop-up",
            style: .Default,
            handler: nil)
        
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
        
        var ReviewList = "Rate: \(ratingSelected) \nComment: \(comment)"
        reviewList.text = ReviewList
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView,
        numberOfRowsInComponent component: Int) -> Int {
            return movieRate.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return movieRate[row]
    }
}



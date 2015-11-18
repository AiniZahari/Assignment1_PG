//
//  BookingDetailViewController.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 10/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//

import UIKit

class BookingDetailViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    var movieName:String?
    var movieShowtime:String?
    var ticketCount:String?


    let movieDate = ["Monday - 3:30pm", "Wednesday - 12:30pm", "Friday - 8:30pm"]
    
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var timeDate: UIPickerView!
    @IBOutlet weak var totalTicket: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblname.text = movieName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        let row = timeDate.selectedRowInComponent(0)
        let dateSelected = movieDate[row]
        let totalTics = totalTicket.text
        let mName = lblname.text
        
        let title = "-= Booking Successful =- \n "
        
        let alert = UIAlertController(
            title: title,
            message: "Movie: \(mName!)\n Showtime: \(dateSelected)\n Total tickets: \(totalTics)\n Thank you for puchansing",
            preferredStyle: .Alert)
        
        let action = UIAlertAction(
            title: "Close this pop-up",
            style: .Default,
            handler: nil)
        
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView,
        numberOfRowsInComponent component: Int) -> Int {
            return movieDate.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return movieDate[row]
    }
    
}
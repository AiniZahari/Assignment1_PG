//
//  TableViewController.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 5/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//

import UIKit
class TableViewController: UITableViewController
{
    var cinemaL = Model().cinemaList
    var movieL = ModelMovies().movieList
    
    override func tableView(tableView:UITableView, numberOfRowsInSection section: Int)->Int
    {
        return cinemaL.cinemaList.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)->UITableViewCell
    {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        var cinema:Cinemas
        cinema = cinemaL.cinemaList[indexPath.row]
        cell.textLabel!.text = cinema.name
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    override func tableView(tableView:UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("CinemaDetail", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!)
    {
        let DetailViewController = segue.destinationViewController as! UIViewController
        let indexPath = self.tableView.indexPathForSelectedRow()!
        let destinationTitle = self.cinemaL.cinemaList[indexPath.row].name
        DetailViewController.title = destinationTitle
    }
}

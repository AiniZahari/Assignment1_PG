//
//  DetailViewController.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 5/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//

import Foundation
import UIKit

class MovieTableViewController: UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate
{
    var movieL = ModelMovies().movieList
    override func tableView(tableView:UITableView, numberOfRowsInSection section: Int)->Int
    {
        return movieL.movieList.count;
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)->UITableViewCell
    {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        var movie:Movies
        movie = movieL.movieList[indexPath.row]
        cell.textLabel?.text = movie.movieTitle
        cell.detailTextLabel?.text = movie.date
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    override func tableView(tableView:UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("MovieDetail", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!)
    {
        let MovieDetailViewController = segue.destinationViewController as UIViewController
        let indexPath = self.tableView.indexPathForSelectedRow()!
        let destinationTitle = self.movieL.movieList[indexPath.row].movieTitle
        MovieDetailViewController.title = destinationTitle
    }
}
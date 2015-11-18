//
//  DetailViewController.swift
//  Assignment1_PG
//
//  Created by Aini Zahari on 5/04/2015.
//  Copyright (c) 2015 Siti Nur Aini Zahari. All rights reserved.
//

import Foundation
import UIKit
class DetailViewController: UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate
{
    var movieL = ModelMovies().movieList
    var filteredMovies = [Movies]()
    
    @IBOutlet var searchBar: UITableView!
    
    /* Insert MovieList to TableView Cells*/
    override func tableView(tableView:UITableView, numberOfRowsInSection section: Int)->Int
    {
        if tableView == self.searchDisplayController!.searchResultsTableView{
            return self.filteredMovies.count
        } else {
            return movieL.movieList.count;
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)->UITableViewCell
    {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        var movie:Movies
        
       if tableView == self.searchDisplayController!.searchResultsTableView{
            movie = filteredMovies[indexPath.row]
        } else {
            movie = movieL.movieList[indexPath.row]
        }
        
        cell.textLabel?.text = movie.movieTitle
        cell.detailTextLabel?.text = movie.date
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    /* Insert data to title on the next page according to selected movie*/
    override func tableView(tableView:UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("MovieDetail", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!)
    {
        if segue.identifier == "MovieDetail"{
            let MovieController = segue.destinationViewController as MovieDetailController
            if sender as UITableView == self.searchDisplayController!.searchResultsTableView
            {
                let indexPath = self.searchDisplayController!.searchResultsTableView.indexPathForSelectedRow()!
                let destinationTitle = self.filteredMovies[indexPath.row].movieTitle
                let destinationImage = self.filteredMovies[indexPath.row].imageName
                let destinationShowtime = self.filteredMovies[indexPath.row].date
                MovieController.title = destinationTitle
                MovieController.movieName = destinationTitle
                MovieController.imageName = destinationTitle
                MovieController.movieShowtime = destinationShowtime
            }else{
                let indexPath = self.tableView.indexPathForSelectedRow()!
                let destinationTitle = self.movieL.movieList[indexPath.row].movieTitle
                let destinationImage = self.movieL.movieList[indexPath.row].imageName
                let destinationShowtime = self.movieL.movieList[indexPath.row].date
                MovieController.title = destinationTitle
                MovieController.movieName = destinationTitle
                MovieController.imageName = destinationTitle
                MovieController.movieShowtime = destinationShowtime
            }
        }
    }
    
    func filterContentForSearchText(searchText:String){
        self.filteredMovies = movieL.movieList.filter({
        (movie:Movies)->Bool in
        
        let nameMatch =
            (searchText == "All")
            ||
            (movie.movieTitle.lowercaseString.rangeOfString(searchText.lowercaseString) != nil)
        return nameMatch
        }
        )
    }
    
    func searchDisplayController(controller: UISearchDisplayController!, shouldReloadTableForSearchString searchString: String!) -> Bool
    {
        
        self.filterContentForSearchText(searchString)
        return true
    }
    func searchDisplayController(controller: UISearchDisplayController!, shouldReloadTableForSearchScope searchOption: Int) -> Bool
    {
            self.filterContentForSearchText(self.searchDisplayController!.searchBar.text)
            return true
    }
}
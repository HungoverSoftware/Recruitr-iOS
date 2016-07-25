//
//  RatingViewController.swift
//  Fraternity app
//
//  Created by Richard on 7/15/16.
//  Copyright © 2016 Richard. All rights reserved.
//

import Foundation
import UIKit

class RatingTableViewController: UITableViewController {
    
    var memberSelections = [MemberSelection]()
    
    //MARK: Properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadSampleMemberSelection()
        
    }
    
    func loadSampleMemberSelection() {
        
        let testImage = UIImage(named: "filledStar")!
        let memberSelection1 = MemberSelection(name: "Mike", photo: testImage, rating: 4)!
        let memberSelection2 = MemberSelection(name: "Will", photo: testImage, rating: 3)!
        let memberSelection3 = MemberSelection(name: "Dave", photo: testImage, rating: 2)!
        
        memberSelections += [memberSelection1, memberSelection2, memberSelection3]
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
// Dispose of any resources that can be recreated.

    }
    
    //MARK: Table View Data Source
    
    //tells the table view how many sections to display
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // changed from 0 to 1, to make sure that the table view shows 1 section instead of 0
        return 1
    }
    
    //provides the rows for each section of the table view, we want to provide a row for every meal
    //the number of rows should be the number of meal objects in the meals array
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // to figure out the number of rows in the meals array, we use the array property: .count
        return memberSelections.count
    }
    
    //this method configures and provides a cell to display in each given row
    //each row has one cell, and the cell determines the content in the row and how it's laid out
    //cellForRowAtIndexPath only asks for the cells for the rows that are currently being displayed
    
    //this method works by fetching the "meal" in the meals array and setting the cells properties to the corresponding values from the meal class
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier constant called "cellIdentifier"
        let cellIdentifier = "RatingTableViewCell"
        
        //used as! to downcast the type of the cell to the custom cell class subclass MealTableViewCell
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! RatingTableViewCell
        
        //Fetches the appropriate meal for the data source layout
        let memberSelection = memberSelections[indexPath.row]
        
        // Configure the cell...
        cell.nameLabel.text = memberSelection.name
        //cell.photoImageView.image = memberSelection.photo
        //cell.ratingControl.rating = memberSelection.rating
        
        return cell
        
    }
    
    
}
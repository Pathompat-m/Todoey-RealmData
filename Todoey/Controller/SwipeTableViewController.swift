//
//  SwipeTableViewController.swift
//  Todoey
//
//  Created by Pathompat Mekbenchapivat on 15/4/2567 BE.
//

import UIKit
import SwipeCellKit

// A base view controller class for managing swipeable table view cells.
class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set default row height and remove table view separators
        tableView.rowHeight = 80.0
        tableView.separatorStyle = .none
    }
    
    //TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Configure swipeable table view cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        
        cell.delegate = self
        
        return cell
    }
    
    // Returns the swipe actions to display when the user swipes horizontally on a table view cell.
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            
            self.updateModel(at: indexPath)
            
        }
        
        
        deleteAction.image = UIImage(named: "delete-icon")
        
        return [deleteAction]
    }
    
    func updateModel(at indexPath: IndexPath) {
        // Updates the data model when a swipe action is performed.
    }
    
}


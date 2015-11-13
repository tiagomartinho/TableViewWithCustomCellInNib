//
//  ViewController.swift
//  TableViewWithCustomCellInNib
//
//  Created by Tiago Martinho on 12/11/15.
//  Copyright © 2015 Tiago Martinho. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let nib = UINib(nibName: "ItemCell", bundle: nil)
        self.tableView.registerNib(nib, forCellReuseIdentifier: "itemCell")
        let cell = tableView.dequeueReusableCellWithIdentifier("itemCell") as! ItemCell
        
        var text = ""
        for _ in 1...arc4random_uniform(100) {
            text += "dskfj"
        }
        cell.cellDescription.text = text
        if indexPath.row % 2 == 0 {
            cell.cellImage.image = UIImage(named: "scan")
        }
        else {
            cell.cellImage.image = UIImage(named: "scan2")
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 400.0
    }
}


//
//  ProfileViewController.swift
//  Trent Rand
//
//  Created by Trent Rand on 4/24/15.
//  Copyright (c) 2015 Trent Rand. All rights reserved.
//

import Foundation

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView?
    
    var tableViewContent: [String] = ["About", "Traits", "Knowledge", "Portfolio", "Contact"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView!.separatorStyle = UITableViewCellSeparatorStyle.None;
        self.tableView!.backgroundColor = UIColor.clearColor()
        self.tableView!.reloadData()
        
        
        var nib = UINib(nibName: "ProfileTableViewCell", bundle: nil)
        tableView!.registerNib(nib, forCellReuseIdentifier: "customCell")
        
        if (tableView!.contentSize.height < tableView!.frame.size.height) {
            tableView!.scrollEnabled = false
        }
        else {
            tableView!.scrollEnabled = true
        }

        self.createBlur(effectStyle: UIBlurEffectStyle.Light, index: 1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int {
        return 0
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewContent.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = self.tableView!.dequeueReusableCellWithIdentifier("customCell") as! ProfileTableViewCell
        cell.loadItem(title: tableViewContent[indexPath.row], image: tableViewContent[indexPath.row])
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = UIColor.clearColor()
    }
    
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        // Implement click listener here
        return nil
    }

}

class ProfileTableViewCell: UITableViewCell {
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    func loadItem(#title: String, image: String) {
        backgroundImage.image = UIImage(named: image)
        titleLabel.text = title
    }
}
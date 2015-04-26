//
//  MenuViewController.swift
//  Trent Rand
//
//  Created by Trent Rand on 4/21/15.
//  Copyright (c) 2015 Trent Rand. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView?
    
    var tableViewContent: [String] = ["TrentRand.com", "GitHub", "Apple Support", "Facebook"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        self.tableView!.separatorStyle = UITableViewCellSeparatorStyle.None;
        self.tableView!.backgroundColor = UIColor.clearColor()
        self.tableView!.reloadData()
        
        
        var nib = UINib(nibName: "HamburgerTableViewCell", bundle: nil)
        tableView!.registerNib(nib, forCellReuseIdentifier: "customCell")
        
        if (tableView!.contentSize.height < tableView!.frame.size.height) {
            tableView!.scrollEnabled = false
        }
        else {
            tableView!.scrollEnabled = true
        }

        
        self.createBlur(effectStyle: UIBlurEffectStyle.Light, index: 0)
    }
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int {
        return 0
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 45
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewContent.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = self.tableView!.dequeueReusableCellWithIdentifier("customCell") as! HamburgerTableViewCell
        cell.loadItem(title: tableViewContent[indexPath.row], image: tableViewContent[indexPath.row])
        
        return cell

    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = UIColor.clearColor()
    }
    
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        // Implement click listener here
        switch indexPath.row {
        case 0:
            UIApplication.sharedApplication().openURL(NSURL(string: "http://www.TrentRand.com/")!)
        case 1:
            UIApplication.sharedApplication().openURL(NSURL(string: "https://github.com/trentrand")!)
        case 2:
            UIApplication.sharedApplication().openURL(NSURL(string: "https://discussions.apple.com/people/TrentRand")!)
        case 3:
            UIApplication.sharedApplication().openURL(NSURL(string: "https://www.facebook.com/trent.rand")!)
        default:
            NSLog("switch statement broke! check func tableViewwillSelectRowAtIndexPath in MenuViewController")
        }
        
        return nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}

class HamburgerTableViewCell: UITableViewCell {
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    func loadItem(#title: String, image: String) {
        backgroundImage.image = UIImage(named: image)
        titleLabel.text = title
    }
}
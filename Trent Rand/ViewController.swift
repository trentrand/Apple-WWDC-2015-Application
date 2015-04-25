//
//  ViewController.swift
//  Trent Rand
//
//  Created by Trent Rand on 4/15/15.
//  Copyright (c) 2015 Trent Rand. All rights reserved.
//

import UIKit

class ViewController: MBPullDownController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        self.frontController = storyboard?.instantiateViewControllerWithIdentifier("traitsVC") as! UIViewController
        self.backController = storyboard?.instantiateViewControllerWithIdentifier("profileVC") as! UIViewController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hamburgerPressed(sender: AnyObject) {
        AppDelegate.mainDelegate().slideMenuVC.toggleMenu()
    }

}


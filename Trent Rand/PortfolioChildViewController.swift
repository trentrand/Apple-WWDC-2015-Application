//
//  PortfolioChildViewController.swift
//  Trent Rand
//
//  Created by Trent Rand on 4/26/15.
//  Copyright (c) 2015 Trent Rand. All rights reserved.
//

import Foundation

class PortfolioChildViewController: UIViewController {
    var index: NSInteger!
    
    @IBOutlet var portfolioDescription: UITextView!
    @IBOutlet var portfolioTitle: UILabel!
    @IBOutlet var portfolioLogo: UILabel!
    
    let githubBase = "http://www.GitHub.com/TrentRand/"
    var githubProject: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch index {
        case 0:
            portfolioTitle.text = "iTunes Radio Unlimited"
            githubProject = "iTunesRadioUnlimited"
            portfolioLogo.text = ""
            portfolioDescription.text = "With over 500k downloads, iTunes Radio Unlimited is a jailbreak tweak to get rid of the ads and skip limits of iTunes Radio for iOS. Don't hate me, Apple :("
        case 1:
            portfolioTitle.text = "Karma Infinity"
            githubProject = "KarmaInfinity"
            portfolioLogo.text = ""
            portfolioDescription.text = "The original reddit upvote bot. With human-like activity running on a one-to-one proxy, KarmaInfinity is great at bypassing the auto-bot detection implemented by reddit."
        case 2:
            portfolioTitle.text = "Patient Care"
            githubProject = "Patient-Care"
            portfolioLogo.text = ""
            portfolioDescription.text = "Patient Care allows patients, doctors, and healthcare professionals to enter the 21st century by introducing a smart phone powered waiting room queue system.  It's has a great deal of networking practices and software engineering architchecture to demonstrate."
        case 3:
            portfolioTitle.text = "Want to see more?"
            githubProject = "#"
            portfolioLogo.text = ""
            portfolioDescription.text = "More portfolio content coming soon... If you're eager to see right now, view my GitHub."
        default:
            portfolioTitle.text = "Error"
            githubProject = "404"
            portfolioLogo.text = ""
            portfolioDescription.text = "This shouldn't have shown up. Oops!"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func clickedViewGithub(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: githubBase + githubProject)!)
    }
}
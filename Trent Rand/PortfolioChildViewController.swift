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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch index {
        case 0:
            portfolioTitle.text = "iTunes Radio Unlimited"
            portfolioDescription.text = "With 500k downloads, iTunes Radio Unlimited is a jailbreak tweak to get rid of the ads and skip limits of iTunes Radio for iOS. Don't hate me, Apple :("
        case 1:
            portfolioTitle.text = "Karma Infinity"
            portfolioDescription.text = "The original reddit upvote bot. With human-like activity running on a one-to-one proxy, KarmaInfinity is great at bypassing the auto-bot detection implemented by reddit."
        case 2:
            portfolioTitle.text = "Patient Care"
            portfolioDescription.text = "Patient Care allows patients, doctors, and healthcare professionals to enter the 21st century. After the user logs in, they are able to rate thier symptom levels in order to determine their queue position to be seen by the doctor. It's has a great deal of networking practices to demonstrate."
        case 3:
            portfolioTitle.text = "Want to see more?"
            portfolioDescription.text = "Unfortunately the scholarship deadline is quickly approaching, and I am out of time! If you'd like to see more, please visit my GitHub!"
        default:
            portfolioTitle.text = "Error"
            portfolioDescription.text = "This shouldn't have shown up. Oops!"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
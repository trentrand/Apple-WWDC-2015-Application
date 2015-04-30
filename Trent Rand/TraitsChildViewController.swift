//
//  TraitsChildViewController.swift
//  
//
//  Created by Trent Rand on 4/26/15.
//
//

import Foundation

class TraitsChildViewController: UIViewController {
    var index: NSInteger!

    @IBOutlet var traitsDescription: UITextView!
    @IBOutlet var traitsTitle: UILabel!
    
    @IBOutlet var traitsLogo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.clearColor()
        
        // Force text view to start at top
        traitsDescription.scrollRangeToVisible(NSRange(location:0, length:0))

        switch index {
        case 0:
            traitsTitle.text = "Personality"
            traitsLogo.text = ""
            traitsDescription.text = "Having a great personality is crucial, so why would I be any different? I’m human too, and behind this page is a passionate person actively working to drive innovation."
        case 1:
            traitsTitle.text = "Team Player"
            traitsLogo.text = ""
            traitsDescription.text = "Two heads are better than one. Whether it’s on GitHub, in class, or at work, I’m always a passionate and active team member willing to contribute a bright mind."
        case 2:
            traitsTitle.text = "Passion"
            traitsLogo.text = ""
            traitsDescription.text = "Take one look at my GitHub and you will see my passion. With commit history 5 days a week, all year long, the facts are present. I am active developer always looking to keep up with the next great technology."
        case 3:
            traitsTitle.text = "Communication"
            traitsLogo.text = ""
            traitsDescription.text = "Never hesitate to ask, I’m great at simplifying and teaching complex problems and scenarios. With a strong background and accomplishment as a tutor, I am capable of providing great help and assistance."
        case 4:
            traitsTitle.text = "Expertise"
            traitsLogo.text = ""
            traitsDescription.text = "Check both my services and open source code.  While having a strong expertise in software engineering, I am also great at everything from mobile app development to website development, networking and even hardware."
        case 5:
            traitsTitle.text = "Ownership"
            traitsLogo.text = ""
            traitsDescription.text = "I don’t wait for tasks, I actively push for improvement. Being internally motivated to solve problems and create great things is my contribution to the world."
        case 6:
            traitsTitle.text = "Open Source"
            traitsLogo.text = ""
            traitsDescription.text = "I ❤︎ GitHub. Not only is it great at managing my code, but it also makes for a great portfolio. If you have not already done so, head over my GitHub!"
        case 7:
            traitsTitle.text = "Experience"
            traitsLogo.text = ""
            traitsDescription.text = "Having first learned to program when I was 15, I have since then invested a large majority of my free time in improving my knowledge of technology. I even work as a software developer at PerfOpt!"
        default:
            traitsTitle.text = "Error"
            traitsDescription.text = "This shouldn't have shown up. Oops!"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
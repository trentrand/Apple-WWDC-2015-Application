//
//  KnowledgeChildViewController.swift
//  Trent Rand
//
//  Created by Trent Rand on 4/26/15.
//  Copyright (c) 2015 Trent Rand. All rights reserved.
//

import Foundation

class KnowledgeChildViewController: UIViewController {
    var index: NSInteger!
    
    @IBOutlet var knowledgeDescription: UITextView!
    @IBOutlet var knowledgeTitle: UILabel!
    @IBOutlet var knowledgeIcon: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Force text view to start at top
        knowledgeDescription.scrollRangeToVisible(NSRange(location:0, length:0))
        
        switch index {
        case 0:
            knowledgeTitle.text = "Software Development"
            knowledgeIcon.text = ""
            knowledgeDescription.text = "Currently studying Software Engineering at Arizona State University, I have a strong background in the practice and methodologies required to deliver a well made software to any of the leading platforms."
        case 1:
            knowledgeTitle.text = "Website Development"
            knowledgeIcon.text = ""
            knowledgeDescription.text = "While I am not the most artistic person, I am particularly great with the HTML and CSS languages. I have the ability to work alongside an artist in order to create, configure, and launch your website on any of the leading web services or local server."
        case 2:
            knowledgeTitle.text = "Mobile Applications"
            knowledgeIcon.text = ""
            knowledgeDescription.text = "Having first learned to program with the Android SDK, I have long since been a big fan of mobile application development. My focus has now shifted towards iOS, although I have a strong background in the mobile application design principles required to bring your application idea to the marketplace."
        case 3:
            knowledgeTitle.text = "Networking"
            knowledgeIcon.text = ""
            knowledgeDescription.text = "Since being employed at PerfOpt in June 2014, I have had the opportunity to work at IO Datacenter in Phoenix, AZ managing two server cabinets. I have a great understanding of basic networking, as well as hands-on experience with wiring and configuring PDUs, switches, firewalls, KVM, servers, and NAS drives among others."
        case 4:
            knowledgeTitle.text = "Hardware"
            knowledgeIcon.text = ""
            knowledgeDescription.text = "After taking electronics and circuit courses at Arizona State University, I developed a love for working with circuitry. As a hobby, I have since begun to learn and work with the Arduino platform in an attempt to make my own Internet of Things electronics."
        case 5:
            knowledgeTitle.text = "IT Management"
            knowledgeIcon.text = ""
            knowledgeDescription.text = "With an extensive background in both Mac OS X and Windows operating systems, I can configure and manage computer systems. Likewise, I have the knowledge required in order to troubleshoot and solve advanced software and hardware computer technical issues."
        default:
            knowledgeTitle.text = "Error"
            knowledgeIcon.text = ""
            knowledgeDescription.text = "This shouldn't have shown up. Oops!"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
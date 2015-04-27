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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch index {
        case 0:
            knowledgeTitle.text = "Software development"
            knowledgeDescription.text = "Currently studying Software Engineering at Arizona State University, I have a strong background in the practice and methodologies needed in order to deliver a well made software to any of the leading platforms."
        case 1:
            knowledgeTitle.text = "Website Development"
            knowledgeDescription.text = "While I am not the most artistic person, I am particularly fluent in the HTML and CSS languages. I have the ability to work alongside an artist in order to create, configure, and launch your website on any of the leading web services or on a physical server."
        case 2:
            knowledgeTitle.text = "Mobile Applications"
            knowledgeDescription.text = "Having first learned to program on the Android platform, I have long since been a big fan of mobile application development. My focus has now shifted towards iOS, although I have a strong background in the mobile application design principles needed to bring your application idea to the marketplace."
        case 3:
            knowledgeTitle.text = "Networking"
            knowledgeDescription.text = "After being employed at PerfOpt in June 2014, I have since had the opportunity to directly work inside IO Datacenter in Phoenix, Arizona managing both a half and full server cabinet. I have a great understanding of basic networking, as well as hands-on experience with wiring and configuring PDUs, switches, firewalls, a KVM, servers, and NAS drives among others."
        case 4:
            knowledgeTitle.text = "Hardware"
            knowledgeDescription.text = "After taking electronics and circuit courses at Arizona State University, I developed a love for working with circuitry. As a hobby, I have since begun to learn and work with the Arduino platform in an attempt to make my own Internet of Things electronics."
        case 5:
            knowledgeTitle.text = "IT Management"
            knowledgeDescription.text = "With an extensive background in both Mac OS X and Windows operating systems, I can configure and manage computer systems. Likewise, I have the knowledge required in order to troubleshoot and solve advanced software and hardware computer technical issues."
        default:
            knowledgeTitle.text = "Error"
            knowledgeDescription.text = "This shouldn't have shown up. Oops!"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
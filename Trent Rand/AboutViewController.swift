//
//  AboutViewController.swift
//  Trent Rand
//
//  Created by Trent Rand on 4/26/15.
//  Copyright (c) 2015 Trent Rand. All rights reserved.
//

import Foundation

class AboutViewController: UIViewController {
    @IBOutlet var txtAbout: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtAbout.scrollRangeToVisible(NSRange(location:0, length:0))
        self.createBlur(effectStyle: UIBlurEffectStyle.ExtraLight, index: 1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
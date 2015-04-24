//
//  HamburgerTableViewCell.swift
//  Trent Rand
//
//  Created by Trent Rand on 4/24/15.
//  Copyright (c) 2015 Trent Rand. All rights reserved.
//

import Foundation

class HumburgerTableViewCell: UITableViewCell {
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    func loadItem(#title: String, image: String) {
        backgroundImage.image = UIImage(named: image)
        titleLabel.text = title
    }
}
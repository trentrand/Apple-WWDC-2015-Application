//
//  Extensions.swift
//  Trent Rand
//
//  Created by Trent Rand on 4/24/15.
//  Copyright (c) 2015 Trent Rand. All rights reserved.
//

import Foundation

extension UIViewController {
    func createBlur(effectStyle: UIBlurEffectStyle = .Light) {
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            view.backgroundColor = UIColor.clearColor()
            
            let blurView = UIVisualEffectView(effect: UIBlurEffect(style: effectStyle))
            blurView.autoresizingMask = UIViewAutoresizing.FlexibleHeight | UIViewAutoresizing.FlexibleWidth
            blurView.frame = view.bounds
                        
            view.insertSubview(blurView, atIndex: 0)
        }
    }
}

extension UITableViewController {
    override func createBlur(effectStyle: UIBlurEffectStyle = UIBlurEffectStyle.ExtraLight) {
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            tableView.backgroundColor = UIColor.clearColor()
            
            let blurEffect = UIBlurEffect(style: effectStyle)
            tableView.backgroundView = UIVisualEffectView(effect: blurEffect)
            tableView.separatorEffect = UIVibrancyEffect(forBlurEffect: blurEffect)
        }
    }
}

extension UILabel {
    func addBottomBorderWithColor(color: UIColor, borderWidth: CGFloat) {
        var border = CALayer(layer: layer)
        border.backgroundColor = color.CGColor
        border.frame = CGRectMake(0, self.frame.size.height - borderWidth, self.frame.size.width - 285, borderWidth)
        self.layer.addSublayer(border)
    }
}
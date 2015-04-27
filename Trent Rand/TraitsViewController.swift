//
//  TraitsViewController.swift
//  Trent Rand
//
//  Created by Trent Rand on 4/24/15.
//  Copyright (c) 2015 Trent Rand. All rights reserved.
//

import Foundation

class TraitsViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    var pageController: UIPageViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageController = UIPageViewController(transitionStyle: UIPageViewControllerTransitionStyle.Scroll, navigationOrientation: UIPageViewControllerNavigationOrientation.Horizontal, options: nil)
        
        self.pageController.dataSource = self
        self.pageController.view.frame = self.view.bounds
        
        var initialViewController: TraitsChildViewController = self.viewControllerAtIndex(0) as! TraitsChildViewController
        
        var viewControllers: Array = Array(arrayLiteral: initialViewController)

        self.pageController.setViewControllers(viewControllers, direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        
        self.addChildViewController(self.pageController)
        self.view.addSubview(self.pageController.view)
        
        self.pageController.didMoveToParentViewController(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var index: Int = (viewController as! TraitsChildViewController).index

        if (index == 0) {
            return nil
        }
        
       index -= 1
        return viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var index: Int = (viewController as! TraitsChildViewController).index
        
        index++;
        
        if (index == 8) {
            return nil
        }
        
        return viewControllerAtIndex(index)
    }
    
    func viewControllerAtIndex(index: Int) -> UIViewController {
        var childViewController: TraitsChildViewController = storyboard?.instantiateViewControllerWithIdentifier("traitsChildVC") as! TraitsChildViewController
        childViewController.index = index
        
        return childViewController
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 8
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
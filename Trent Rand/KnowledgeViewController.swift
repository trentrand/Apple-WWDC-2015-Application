//
//  KnowledgeViewController.swift
//  Trent Rand
//
//  Created by Trent Rand on 4/26/15.
//  Copyright (c) 2015 Trent Rand. All rights reserved.
//

import Foundation

class KnowledgeViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var pageController: UIPageViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageController = UIPageViewController(transitionStyle: UIPageViewControllerTransitionStyle.Scroll, navigationOrientation: UIPageViewControllerNavigationOrientation.Horizontal, options: nil)
        
        self.pageController.dataSource = self
        self.pageController.view.frame = self.view.bounds
        
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.darkGrayColor()
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.orangeColor()
        
        var initialViewController: KnowledgeChildViewController = self.viewControllerAtIndex(0) as! KnowledgeChildViewController
        
        var viewControllers: Array = Array(arrayLiteral: initialViewController)
        
        self.pageController.setViewControllers(viewControllers, direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        
        self.addChildViewController(self.pageController)
        self.view.addSubview(self.pageController.view)
        
        self.pageController.didMoveToParentViewController(self)
        
        self.createBlur(effectStyle: UIBlurEffectStyle.Light, index: 1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var index: Int = (viewController as! KnowledgeChildViewController).index
        
        if (index == 0) {
            return nil
        }
        
        index -= 1
        return viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var index: Int = (viewController as! KnowledgeChildViewController).index
        
        index++;
        
        if (index == 6) {
            return nil
        }
        
        return viewControllerAtIndex(index)
    }
    
    func viewControllerAtIndex(index: Int) -> UIViewController {
        var childViewController: KnowledgeChildViewController = storyboard?.instantiateViewControllerWithIdentifier("knowledgeChildVC") as! KnowledgeChildViewController
        childViewController.index = index
        
        return childViewController
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 6
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
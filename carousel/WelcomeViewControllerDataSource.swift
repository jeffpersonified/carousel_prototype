//
//  WelcomeViewControllerDataSource.swift
//  carousel
//
//  Created by Jeff Smith on 9/22/14.
//  Copyright (c) 2014 Jeff Smith. All rights reserved.
//

import Foundation
import UIKit

class WelcomeViewControllerDataSource: NSObject, UIPageViewControllerDataSource {
    let welcomeScreens: NSArray
    var currentIndex = 0

    override init() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        welcomeScreens = [storyBoard.viewControllerWithIdentifier("welcome1"),
                          storyBoard.viewControllerWithIdentifier("welcome2"),
                          storyBoard.viewControllerWithIdentifier("welcome3"),
                          storyBoard.viewControllerWithIdentifier("welcome4")]
        super.init()
        stylePageControl()
    }

    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return welcomeScreens.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return currentIndex
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        currentIndex = welcomeScreens.indexOfObject(viewController)
        var destinationIndex = currentIndex + 1
        
        if destinationIndex >= welcomeScreens.count {
            return .None
        }
        
        return welcomeScreens[destinationIndex] as? UIViewController
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        currentIndex = welcomeScreens.indexOfObject(viewController)
        var destinationIndex = currentIndex - 1
        
        if destinationIndex < 0 {
            return .None
        }
        
        return welcomeScreens[destinationIndex] as? UIViewController
    }
    
    func stylePageControl() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.blueColor()
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.grayColor()
    }
}

extension UIStoryboard {
    func viewControllerWithIdentifier(identifier: String) -> UIViewController {
        return instantiateViewControllerWithIdentifier(identifier) as UIViewController
    }
}
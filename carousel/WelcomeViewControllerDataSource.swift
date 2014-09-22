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

    override init() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        welcomeScreens = [storyBoard.viewControllerWithIdentifier("welcome1"),
                          storyBoard.viewControllerWithIdentifier("welcome2"),
                          storyBoard.viewControllerWithIdentifier("welcome3"),
                          storyBoard.viewControllerWithIdentifier("welcome4")]
        super.init()
    }

    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        let currentIndex = welcomeScreens.indexOfObject(viewController)
        return welcomeScreens[currentIndex + 1] as? UIViewController
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        let currentIndex = welcomeScreens.indexOfObject(viewController)
        return welcomeScreens[currentIndex - 1] as? UIViewController
    }
}

extension UIStoryboard {
    func viewControllerWithIdentifier(identifier: String) -> UIViewController {
        return instantiateViewControllerWithIdentifier(identifier) as UIViewController
    }
}
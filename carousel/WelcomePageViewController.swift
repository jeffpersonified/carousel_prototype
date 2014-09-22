//
//  WelcomePageViewController.swift
//  carousel
//
//  Created by Jeff Smith on 9/22/14.
//  Copyright (c) 2014 Jeff Smith. All rights reserved.
//

import UIKit

class WelcomePageViewController: UIPageViewController {

    let welcomeDataSource: WelcomeViewControllerDataSource
    
    
    required init(coder aDecoder: NSCoder) {

        welcomeDataSource = WelcomeViewControllerDataSource()
        
        super.init(coder: aDecoder)
        
        dataSource = welcomeDataSource
        setViewControllers([welcomeDataSource.welcomeScreens[0]], direction: .Forward, animated: false, completion: .None)
    }
    
}

//
//  TutorialViewController.swift
//  carousel
//
//  Created by Jeff Smith on 9/21/14.
//  Copyright (c) 2014 Jeff Smith. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var tutorialScrollView: UIScrollView!
    @IBOutlet weak var firstWelcomeImageView: UIImageView!
    @IBOutlet var tutorialSwipeGestureRecognizer: UISwipeGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tutorialScrollView.contentSize.width = firstWelcomeImageView.frame.size.width * 4
        
        
    }
    
    func scrollViewDidEndDecelerating(tutorialScrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(tutorialScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        println(pageControl.currentPage)
    }

}

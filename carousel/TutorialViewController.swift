//
//  TutorialViewController.swift
//  carousel
//
//  Created by Jeff Smith on 9/21/14.
//  Copyright (c) 2014 Jeff Smith. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var tutorialScrollView: UIScrollView!
    @IBOutlet weak var firstWelcomeImageView: UIImageView!
    @IBOutlet var tutorialSwipeGestureRecognizer: UISwipeGestureRecognizer!
    @IBOutlet weak var controlsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tutorialScrollView.contentSize.width = firstWelcomeImageView.frame.size.width * 4

    }
    
    func scrollViewDidEndDecelerating(tutorialScrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page = Int(round(tutorialScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        if page == 3 {
            UIView.animateWithDuration(0.3) {
                self.controlsView.alpha = 1
            }
        } else {
            UIView.animateWithDuration(0.3) {
                self.controlsView.alpha = 0
            }
        }
    }

}

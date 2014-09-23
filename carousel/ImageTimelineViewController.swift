//
//  ImageTimelineViewController.swift
//  carousel
//
//  Created by Jeff Smith on 9/23/14.
//  Copyright (c) 2014 Jeff Smith. All rights reserved.
//

import UIKit

class ImageTimelineViewController: UIViewController {

    @IBOutlet weak var timelineScrollView: UIScrollView!
    @IBOutlet weak var timelineOtherwiseKnownAsFeedImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timelineScrollView.contentSize = timelineOtherwiseKnownAsFeedImageView.frame.size
    }
    
}
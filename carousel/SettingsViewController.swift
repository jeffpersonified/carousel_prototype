//
//  SettingsViewController.swift
//  carousel
//
//  Created by Jeff Smith on 9/23/14.
//  Copyright (c) 2014 Jeff Smith. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var settingsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsScrollView.contentSize = settingsImage.frame.size
        
    }

    @IBAction func onCloseSettingsButton(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}

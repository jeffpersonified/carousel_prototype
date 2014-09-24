//
//  CreateAccountController.swift
//  carousel
//
//  Created by Jeff Smith on 9/23/14.
//  Copyright (c) 2014 Jeff Smith. All rights reserved.
//

import UIKit

class CreateAccountController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onBackButton(sender: UIButton) {
        navigationController!.popViewControllerAnimated(true)
    }
}
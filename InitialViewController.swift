//
//  InitialViewController.swift
//  carousel
//
//  Created by Jeff Smith on 9/17/14.
//  Copyright (c) 2014 Jeff Smith. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
   
    @IBOutlet weak var initialScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    // Tiles
    @IBOutlet weak var lakeImageView: UIImageView!
    @IBOutlet weak var deerImageView: UIImageView!
    @IBOutlet weak var fishImageView: UIImageView!
    @IBOutlet weak var cabinImageView: UIImageView!
    @IBOutlet weak var dogImageView: UIImageView!
    @IBOutlet weak var bunnyEarsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialScrollView.contentSize = introImageView.frame.size
        
        // Transform tiles
        bunnyEarsImageView.transform = CGAffineTransformMakeRotation(-0.20)
        lakeImageView.transform = CGAffineTransformMakeRotation(0.25)
        fishImageView.transform = CGAffineTransformMakeRotation(0.22)
        cabinImageView.transform = CGAffineTransformMakeRotation(0.23)
        deerImageView.transform = CGAffineTransformMakeRotation(-0.20)
        dogImageView.transform = CGAffineTransformMakeRotation(-0.19)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

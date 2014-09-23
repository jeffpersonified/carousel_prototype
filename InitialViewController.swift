//
//  InitialViewController.swift
//  carousel
//
//  Created by Jeff Smith on 9/17/14.
//  Copyright (c) 2014 Jeff Smith. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController, UIScrollViewDelegate {
   
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
        setInitialPositions()
        
        // Transform tiles
//            bunnyEarsImageView.transform = CGAffineTransformMakeRotation(-0.20)
//        lakeImageView.transform = CGAffineTransformMakeRotation(0.25)
//        fishImageView.transform = CGAffineTransformMakeRotation(0.22)
//        cabinImageView.transform = CGAffineTransformMakeRotation(0.23)
//        deerImageView.transform = CGAffineTransformMakeRotation(-0.20)
//        dogImageView.transform = CGAffineTransformMakeRotation(-0.19)
    }
    
    func scrollViewDidScroll(initialScrollView: UIScrollView) {
        var percentage = 0.0
        var offset = initialScrollView.contentOffset.y / 568

        if offset >= 1 {
            percentage = -0.0
        } else if offset <= 0 {
            percentage = -1.0
        } else {
            percentage = Double(offset - 1)
        }
        
        setBunnyEarsImagePosition(percentage)
        setLakeImagePosition(percentage)
        setFishImagePosition(percentage)
        setCabinImagePosition(percentage)
        setDeerImagePosition(percentage)
        setDogImagePosition(percentage)

    }
    
    func setInitialPositions() {
        let percentage = -1.0
        
        setBunnyEarsImagePosition(percentage)
        setLakeImagePosition(percentage)
        setFishImagePosition(percentage)
        setCabinImagePosition(percentage)
        setDeerImagePosition(percentage)
        setDogImagePosition(percentage)
        
    }
    
    func setBunnyEarsImagePosition(percentage: Double) {
        bunnyEarsImageView.transform = CGAffineTransformMakeTranslation(CGFloat(percentage * 30), CGFloat(percentage * 400))
        bunnyEarsImageView.transform = CGAffineTransformRotate(bunnyEarsImageView.transform, CGFloat(percentage * 0.20))
    }

    func setLakeImagePosition(percentage: Double) {
        lakeImageView.transform = CGAffineTransformMakeTranslation(CGFloat(percentage * 30), CGFloat(percentage * 400))
        lakeImageView.transform = CGAffineTransformRotate(lakeImageView.transform, CGFloat(percentage * -0.20))
    }

    func setFishImagePosition(percentage: Double) {
        fishImageView.transform = CGAffineTransformMakeTranslation(CGFloat(percentage * 20), CGFloat(percentage * 400))
        fishImageView.transform = CGAffineTransformRotate(fishImageView.transform, CGFloat(percentage * -0.20))
    }
    
    func setCabinImagePosition(percentage: Double) {
        cabinImageView.transform = CGAffineTransformMakeTranslation(CGFloat(percentage * 35), CGFloat(percentage * 400))
        cabinImageView.transform = CGAffineTransformRotate(cabinImageView.transform, CGFloat(percentage * 0.15))
    }

    func setDeerImagePosition(percentage: Double) {
        deerImageView.transform = CGAffineTransformMakeTranslation(CGFloat(percentage * -30), CGFloat(percentage * 400))
        deerImageView.transform = CGAffineTransformRotate(deerImageView.transform, CGFloat(percentage * -0.20))
    }
    
    func setDogImagePosition(percentage: Double) {
        dogImageView.transform = CGAffineTransformMakeTranslation(CGFloat(percentage * -35), CGFloat(percentage * 400))
        dogImageView.transform = CGAffineTransformRotate(dogImageView.transform, CGFloat(percentage * 0.20))
    }
    
}

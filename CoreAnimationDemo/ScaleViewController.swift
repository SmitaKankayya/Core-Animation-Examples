//
//  ScaleViewController.swift
//  CoreAnimationDemo
//
//  Created by Smita Kankayya on 19/04/24.
//

import UIKit

class ScaleViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        let animation = CABasicAnimation()
        animation.keyPath = "transform.scale"
        animation.fromValue = 1
        animation.toValue = 2
        animation.duration = 0.4
        
        redView.layer.add(animation, forKey: "basic")
        redView.layer.transform = CATransform3DMakeScale(2, 2, 1) // update
    }
}

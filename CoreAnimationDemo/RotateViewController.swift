//
//  RotateViewController.swift
//  CoreAnimationDemo
//
//  Created by Smita Kankayya on 19/04/24.
//

import UIKit

class RotateViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        let animation = CABasicAnimation()
        animation.keyPath = "transform.rotation.z" // Note: z-axis
        animation.fromValue = 0
        animation.toValue = CGFloat.pi / 4
        animation.duration = 1
        
        redView.layer.add(animation, forKey: "basic")
        redView.layer.transform = CATransform3DMakeRotation(CGFloat.pi / 4, 0, 0, 1)
        
    }
}

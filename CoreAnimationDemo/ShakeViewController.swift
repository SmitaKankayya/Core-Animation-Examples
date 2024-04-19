//
//  ShakeViewController.swift
//  CoreAnimationDemo
//
//  Created by Smita Kankayya on 19/04/24.
//

import UIKit

class ShakeViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        let animation = CAKeyframeAnimation()
        animation.keyPath = "position.x"
        animation.values = [0, 10, -10, 10, 0]
        animation.keyTimes = [0, 0.16, 0.5, 0.83, 1]
        animation.duration = 0.4
        
        animation.isAdditive = true
        redView.layer.add(animation, forKey: "shake")
    }
    
}

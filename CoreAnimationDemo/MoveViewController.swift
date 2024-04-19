//
//  MoveViewController.swift
//  CoreAnimationDemo
//
//  Created by Smita Kankayya on 19/04/24.
//

import UIKit

class MoveViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let animation = CABasicAnimation()
        animation.keyPath = "position.x"
        animation.fromValue = 20 + 140/2
        animation.toValue = 300
        animation.duration = 1
        
        redView.layer.add(animation, forKey: "basic")
        redView.layer.position = CGPoint(x: 300, y: 100 + 100/2) // update to final position
    }
    
}





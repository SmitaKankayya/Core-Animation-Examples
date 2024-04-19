//
//  CirclingViewController.swift
//  CoreAnimationDemo
//
//  Created by Smita Kankayya on 19/04/24.
//

import UIKit

class CirclingViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var redCircle: UIImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configureCircleImageView()
    }
    
    func configureCircleImageView() {
        
        redCircle.layer.cornerRadius = redCircle.bounds.width / 2
        redCircle.clipsToBounds = true
        redCircle.layer.borderColor = UIColor.red.cgColor
        redCircle.layer.borderWidth = 1.0
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        let boundingRect = CGRect(x: -redCircle.bounds.width / 2, y: -redCircle.bounds.height / 2, width: redCircle.bounds.width, height: redCircle.bounds.height)
        
        let orbit = CAKeyframeAnimation()
        orbit.keyPath = "position"
        orbit.path = CGPath(ellipseIn: boundingRect, transform: nil)
        orbit.duration = 2
        orbit.isAdditive = true
        orbit.calculationMode = .paced
        orbit.rotationMode = .rotateAuto
        
        redView.layer.add(orbit, forKey: "redbox")
    }
    
}

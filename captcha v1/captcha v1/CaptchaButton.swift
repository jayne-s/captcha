//
//  CaptchaButton.swift
//  captcha v1
//
//  Created by Srinivas, Jayne P on 3/16/22.
//

import UIKit

class CaptchaButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    func shake() {
            let animation = CABasicAnimation(keyPath: "position")
            
            animation.duration     = 0.05
            animation.repeatCount  = 3
            animation.autoreverses = true
            animation.fromValue    = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
            animation.toValue      = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
            
            self.layer.add(animation, forKey: "position")
        }

    
}

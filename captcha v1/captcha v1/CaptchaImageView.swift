//
//  CaptchaImageView.swift
//  captcha v1
//
//  Created by Srinivas, Jayne P on 3/14/22.
//

import UIKit

protocol ViewControllerDelegate: AnyObject {
    func didFinishTask(sender: ViewController)
}

//protocol Shakeable where Self: UIView
protocol shake
{
    var duration: Double {set get}
    var repeatCount: Float {set get}
    var autoreverses: Bool {set get}
    var fromValue: NSValue {set get}
    var toValue: NSValue {set get}
    func shake()
    
    func tapGestureClicked(sender: ViewController)
}
//extension Shakeable {
    extension shake {
    var duration: Double{ return 0.05 }
    var repeatCount: Float {return 3}
    var autoreverses: Bool {return true}
    
    // var fromValue: NSValue = NSValue(cgPoint: CGPoint(x: center.x - 4.0, y: center.y))
     
   //  var toValue: NSValue = NSValue(cgPoint: CGPoint(x: center.x + 4.0, y: center.y))
}


class CaptchaImageView:UIImageView{
   // var delegate: Shakeable?
    var delegate: shake?
    var autoreverses: Bool = true
    
    var fromValue: NSValue?
    
    var toValue: NSValue?
    
    var repeatCount: Float = 0.0
    var duration: Double = 0.05
    
    func shakeaction(){
        delegate?.shake()
       
    }
    


    func shake(){
    let animation = CABasicAnimation(keyPath: "position")
        self.layer.add(animation, forKey: "position")
        animation.duration = duration
        animation.repeatCount  = Float(repeatCount)
        animation.autoreverses = true
        animation.fromValue    = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        animation.toValue      = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        
        self.layer.add(animation, forKey: "position")
    }
}


//let sh = CaptchaImageView()
//let shy = CaptchaImageView(handler:sh)
//sh.shakeaction()






/*struct CaptchaImageView: UIImageView, Shakeable {
    var repeatCount: Int
    
        var duration: Double = 0.0
        
        var fromValue: NSValue
        
        var toValue: NSValue
        
    func shake(){
        //write something
    }*/

   

    
    
   
    
    //var toValue: NSValue { get <#set#> }
    
    
    
    
 /*   func shake() {
            let animation = CABasicAnimation(keyPath: "position")
            
            animation.duration     = duration
            animation.repeatCount  = repeatCount
            animation.autoreverses = true
            animation.fromValue    = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
            animation.toValue      = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
            
            self.layer.add(animation, forKey: "position")
        }

    
}*/

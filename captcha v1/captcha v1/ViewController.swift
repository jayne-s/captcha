//
//  ViewController.swift
//  captcha v1
//
//  Created by Srinivas, Jayne P on 3/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image1: CaptchaImageView!
    @IBOutlet weak var image2: CaptchaImageView!
    @IBOutlet weak var image3: CaptchaImageView!
    @IBOutlet weak var image4: CaptchaImageView!
   
    @IBOutlet var tap1: UITapGestureRecognizer!
    @IBOutlet var tap2: UITapGestureRecognizer!
    @IBOutlet var tap3: UITapGestureRecognizer!
    @IBOutlet var tap4: UITapGestureRecognizer!
   
    @IBOutlet weak var shakeView: CaptchaImageView!
    
  //  var shake: CaptchaImageView = CaptchaImageView()
  //  var shakeable:CaptchaButton = CaptchaButton()
    var captchaImages: [UIImage] = []
    var incorrect = 0
    var randomGen: [Int] = []
    var randomGen2 = 0
    var currentTag = 0
    var isIncorrect = 0
    var imagesDic: [UIImageView: UIImage] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        fillArray()
        assignImages()
    }
    
    
    func fillArray(){
        for i in 0..<10{
            switch i {
            case 0 :  captchaImages.append(UIImage(named: "2b827.png")!)
            case 1 :  captchaImages.append(UIImage(named: "2bg48.png")!)
            case 2 :  captchaImages.append(UIImage(named: "2cegf.png")!)
            case 3 :  captchaImages.append(UIImage(named: "2cg58.png")!)
            case 4 :  captchaImages.append(UIImage(named: "2cgyx.png")!)
            case 5 :  captchaImages.append(UIImage(named: "2en7g.png")!)
            case 6 :  captchaImages.append(UIImage(named: "2enf4.png")!)
            case 7 :  captchaImages.append(UIImage(named: "2fxgd.png")!)
            case 8 :  captchaImages.append(UIImage(named: "2g7nm.png")!)
            case 9 :  captchaImages.append(UIImage(named: "2g783.png")!)
            default:break
            }
        }
        
        if captchaImages.count != 0{
            for a in captchaImages {
                let imageView = UIImageView(image: a)
                imageView.tag = currentTag
                currentTag+=1
            }
        }
        
        for i in 0..<3{
            randomGen.append(Int.random(in: 0..<10))
        }
        imagesDic = [image1: captchaImages[randomGen[0]] , image2: captchaImages[2] , image3: captchaImages[randomGen[1]], image4:captchaImages[randomGen[2]]]
    }

    func assignImages(){
        randomGen2 = Int.random(in: 0..<4)
        if randomGen2 == 0{
            image1.image = imagesDic[image2]
            image2.image = imagesDic[image1]
            image3.image = imagesDic[image3]
            image4.image = imagesDic[image4]
        }
        if randomGen2 == 1{
            image1.image = imagesDic[image1]
            image2.image = imagesDic[image2]
            image3.image = imagesDic[image3]
            image4.image = imagesDic[image4]
        }
        if randomGen2 == 2{
            image1.image = imagesDic[image1]
            image2.image = imagesDic[image3]
            image3.image = imagesDic[image2]
            image4.image = imagesDic[image4]
        }
        if randomGen2 == 3{
            image1.image = imagesDic[image1]
            image2.image = imagesDic[image3]
            image3.image = imagesDic[image4]
            image4.image = imagesDic[image2]
        }
       
    }
    
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        guard let  getTag = sender.view?.tag else {return}
        
        if (getTag == 0 && randomGen2 == 0 || getTag == 1 && randomGen2 == 1 || getTag == 2 && randomGen2 == 2 || getTag == 3 && randomGen2 == 3) {
            performSegue(withIdentifier: "transitiontoSoundSegue", sender: nil)
            
        }
        else{
           // guard let  failTag = sender.view?.tag else {return}
            
             //if getTag != randomGen2
           // if (image1.image != nil  && image1.image!.isEqual(image2.image) || image2.image != nil  && image2.image!.isEqual(image3.image) || image3.image != nil  && image3.image!.isEqual(image4.image))
           // var location = captchaImages[getTag]
            //shakeView.shake()
           //print(location)
          //  didFinishTask(sender: ViewController)
           // shake.shake()
          //  shake.shakeIfInputIsEmpty()
            //= captchaImages[getTag]
             // shake feature is not working
            
            shake.self
            DispatchQueue.main.asyncAfter(deadline: .now() + 2)
            {
                print("DispatchQueue triggered.")
            }
            isIncorrect+=1
            differentSegue()
        }
        
    }
    
    
    func differentSegue(){
        if isIncorrect == 2{
            performSegue(withIdentifier: "transitionToBotSegue", sender: nil)
        }
        else{
            fillArray()
            assignImages()
        }
    }
    
    
    
    
}


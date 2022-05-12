//
//  SecondViewController.swift
//  captcha v1
//
//  Created by Srinivas, Jayne P on 3/16/22.
//

import UIKit
import AVFoundation
class SecondViewController: UIViewController {

    @IBOutlet weak var button: CaptchaButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    var shakeable = CaptchaButton()
    var buttonTitles: [String] = ["cku3k", "t6phm", "e6jv9", "bp5k6", "nt6v5", "x6tj8", "8cd65", "cgy3e", "rv6te"]
    var audioPlayer: AVAudioPlayer!
    var audioPaths: [String] = ["alien_cku3k","cassette_t6phm", "chord_e6jv9", "electricity_bp5k6.wav", "helicopter_nt6v5", "magic_x6tj8", "ocean_8cd65", "robot_cgy3e", "scratched_rv6te"]
    var audioSelection: String = ""
    var i = Int.random(in: 0..<9)
    var chosenButtonTitles: [String] = ["", "", ""]
    var chosenButtonTitlesIndexes: [Int] = []
    var j = 0
    var c = Int.random(in: 0..<4)
    var isCorrect = 0
    var convert = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
      
        assignButtonsAndTitles()
        
    }
    
    func randomGen(){
        i = Int.random(in: 0..<9)
    }
    
    func assignAudioSelection(){
        
        convert = audioPaths[i]
        print("\(audioPaths[i])")
        print(convert)
       let soundFileURL = Bundle.main.url(forResource: "Sounds/" + convert, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundFileURL!)
        audioPlayer.play()
        
        
        
        /*else{
            audioPlayer.play()
            return print(audioPaths[i])}
      
        let url = URL(fileURLWithPath: (soundFileURL))
       
        do{
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            try AVAudioSession.sharedInstance().setActive(true)
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        catch{
            print(error)
        }
        */
        
       /*
        i = Int.random(in: 0..<9)
        let sound = Bundle.main.path(forResource: "\(audioPaths[i])", ofType: "wav") ?? "robot_cgy3e.wav"
        let url = URL(fileURLWithPath: sound)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.play()
        }
        catch{
            print(error)
        }
        */
    }
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        
        assignAudioSelection()
        
        /*guard  let soundFileURL = Bundle.main.url(forResource: "\(audioPaths[i])", withExtension: "wav") else{
           // audioPlayer.play()
           
            
            return //print(audioPaths[i])
        }
      
       // let url = URL(fileURLWithPath: (soundFileURL))
       
        do{
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            try AVAudioSession.sharedInstance().setActive(true)
            audioPlayer = try AVAudioPlayer(contentsOf: soundFileURL)
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        catch{
            print(error)
        }
         */
        
        //guard let soundFileURL = Bundle.main.path(forResource: " robot_cgy3e", ofType: "wav") else{return}
   //   guard let soundFileURL = Bundle.main.path(forResource: "\(audioPaths[i])", ofType: "wav") else{return}
     //   let url = URL(fileURLWithPath: soundFileURL)
     //   do{
        //    try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
        //    try AVAudioSession.sharedInstance().setActive(true)
        //    audioPlayer = try AVAudioPlayer(contentsOf: url)
       //     audioPlayer.play()
      //  }
      //  catch{
      //      print(error)
       // }
       
    }
    
    func assignButtonsAndTitles(){
        //var buttonArray:[UIButton] = [answer1, answer2, answer3, answer4]
        
        for a in chosenButtonTitles {
           j = Int.random(in: 0..<9)
            //j=i
            chosenButtonTitlesIndexes.append(j)
            //updateUI()
        }
        chosenButtonTitles = [buttonTitles[chosenButtonTitlesIndexes[0]], buttonTitles[chosenButtonTitlesIndexes[1]], buttonTitles[chosenButtonTitlesIndexes[2]], buttonTitles[i]]
        print(c)
        if c == 0{
            answer1.setTitle(chosenButtonTitles[3], for: .normal)
            answer2.setTitle(chosenButtonTitles[0], for: .normal)
            answer3.setTitle(chosenButtonTitles[1], for: .normal)
            answer4.setTitle(chosenButtonTitles[2], for: .normal)
        }
        else if c == 1{
            answer1.setTitle(chosenButtonTitles[0], for: .normal)
            answer2.setTitle(chosenButtonTitles[3], for: .normal)
            answer3.setTitle(chosenButtonTitles[2], for: .normal)
            answer4.setTitle(chosenButtonTitles[1], for: .normal)
        }
        else if c == 2{
            answer1.setTitle(chosenButtonTitles[1], for: .normal)
            answer2.setTitle(chosenButtonTitles[0], for: .normal)
            answer3.setTitle(chosenButtonTitles[3], for: .normal)
            answer4.setTitle(chosenButtonTitles[2], for: .normal)
        }
        else if c == 3{
            answer1.setTitle(chosenButtonTitles[2], for: .normal)
            answer2.setTitle(chosenButtonTitles[1], for: .normal)
            answer3.setTitle(chosenButtonTitles[0], for: .normal)
            answer4.setTitle(chosenButtonTitles[3], for: .normal)
        }
    }
    
    func updateUI(){
        if c == 0{
            answer1.setTitle(chosenButtonTitles[3], for: .normal)
           // answer1.setTitle(chosenButtonTitles[0], for: .normal)
           // answer1.setTitle(chosenButtonTitles[1], for: .normal)
          //  answer1.setTitle(chosenButtonTitles[2], for: .normal)
        }
        else if c == 1{
            answer1.setTitle(chosenButtonTitles[0], for: .normal)
            answer1.setTitle(chosenButtonTitles[3], for: .normal)
            answer1.setTitle(chosenButtonTitles[2], for: .normal)
            answer1.setTitle(chosenButtonTitles[1], for: .normal)
        }
        else if c == 2{
            answer1.setTitle(chosenButtonTitles[1], for: .normal)
            answer1.setTitle(chosenButtonTitles[0], for: .normal)
            answer1.setTitle(chosenButtonTitles[3], for: .normal)
            answer1.setTitle(chosenButtonTitles[2], for: .normal)
        }
        else if c == 3{
            answer1.setTitle(chosenButtonTitles[2], for: .normal)
            answer1.setTitle(chosenButtonTitles[1], for: .normal)
            answer1.setTitle(chosenButtonTitles[0], for: .normal)
            answer1.setTitle(chosenButtonTitles[3], for: .normal)
        }
    }
    
    @IBAction func answerButtonsPressed(_ sender: UIButton?) {
        guard let tag = sender?.tag else {return}
        print(tag)
        if (tag == 0 && c == 0 || tag == 1 && c == 1 || tag == 2 && c == 2 || tag == 3 && c == 3) {
            
            //problem: the correct answer moves but the tag for the correct answer remains the same -> which leads to choosing the incorrect answer as it is the correct answer according to swift
            
            isCorrect+=1
            twoAreCorrect()
            
        }
        else{
            if i != tag {
            self.shakeable.shake()
            //shake.shake() // shake feature is not working
                print (i)
                print (tag)
            print("before dispatch queue")
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                print("DispatchQueue triggered.")
            }
          // twoAreCorrect()
        }
        
    }
    
    func twoAreCorrect(){
        if isCorrect == 2{
            performSegue(withIdentifier: "transitionToFinalView", sender: nil)
        }
        else{
            
            randomGen()
            c = Int.random(in: 0..<4)
            secondTime()
           
            
        
        }
    }
     
    
    func secondTime(){
        assignAudioSelection()
        assignButtonsAndTitles()
    }
    
}

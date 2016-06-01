//
//  ViewController.swift
//  IronTV
//
//  Created by Allen Spicer on 6/1/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var sound1: AVAudioPlayer?
    var sound2: AVAudioPlayer?
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       let webstring = "https://www.myinstants.com/media/sounds/the-price-is-right-losing-horn.mp3"
        let webstring2 = "https://www.myinstants.com/instant/now-thats-edgy-as-f/"
        let webURL = NSURL(string: webstring)
        let soundData = NSData(contentsOfURL: webURL!)
        do{
            try sound1 = AVAudioPlayer(data: soundData!)
        }catch{
            print("got a terrible error\(error)")
        }
        let webURL2 = NSURL(string: webstring2)
        let soundData2 = NSData(contentsOfURL: webURL2!)
        do{
            try sound2 = AVAudioPlayer(data: soundData2!)
        }catch{
            print("got a different terrible error\(error)")
        }
        
        
        
}
    
    

    @IBAction func bottomButtonPressed() {
        sound2?.play()
        
    }
    @IBAction func topButtonPressed() {
        sound1?.play()

        
    }



    

}


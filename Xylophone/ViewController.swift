//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(_ sound : String){
        let soundURL = NSURL(fileURLWithPath: Bundle.main.path(forResource: sound, ofType: "wav")!)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL as URL)
            }catch {
                print("there was some error. The error was \(error)")
            }
            audioPlayer.play()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound("C")
    }
    
    @IBAction func keyPressedD(_ sender: UIButton) {
        playSound("D")
    }
    
    @IBAction func keyPressedE(_ sender: UIButton) {
        playSound("E")
    }
    
    @IBAction func keyPressedF(_ sender: UIButton) {
        playSound("F")
    }
    
    @IBAction func keyPressedG(_ sender: UIButton) {
        playSound("G")
    }
    
    @IBAction func keyPressedA(_ sender: UIButton) {
        playSound("A")
    }
    
    @IBAction func keyPressedB(_ sender: UIButton) {
        playSound("B")
    }
    
}


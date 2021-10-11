//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer:AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBOutlet weak var ballImageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        // Getting the url
        let url = Bundle.main.url(forResource: "Shaking 3", withExtension: "wav")
        // Make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        // Create the audio player the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("error")
        }
        
        let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball5"),#imageLiteral(resourceName: "ball4")]
        
        ballImageView.image = ballArray.randomElement()
    }
    
}


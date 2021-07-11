//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by нурсултан арапов on 7/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        let ballArrays = [#imageLiteral(resourceName: "Ball1"),#imageLiteral(resourceName: "Ball12-"),#imageLiteral(resourceName: "Ball3"),#imageLiteral(resourceName: "Ball3"),#imageLiteral(resourceName: "Ball4"),#imageLiteral(resourceName: "Ball5"),#imageLiteral(resourceName: "Ball3"),#imageLiteral(resourceName: "Ball10"),#imageLiteral(resourceName: "Ball9"),#imageLiteral(resourceName: "Ball3"),#imageLiteral(resourceName: "Ball2"),#imageLiteral(resourceName: "Ball3"),]
        
        ballImageView.image = ballArrays.randomElement()

    }
    
    
    }





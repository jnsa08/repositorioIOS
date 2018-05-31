//
//  ViewController.swift
//  WarApp
//
//  Created by capacitacion3 on 29-05-18.
//  Copyright © 2018 capacitacion3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2

        let rightRandomNumber = arc4random_uniform(13) + 2

        //Change the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        //Compare the numbers
        if leftRandomNumber > rightRandomNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }else if leftRandomNumber < rightRandomNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
    }
    
}


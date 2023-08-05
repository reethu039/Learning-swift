//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet helps in referencing an UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //WHO.WHAT = VALUE
        
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
        
        //alpha is the transparency
        //diceImageView1.alpha = 0.5
    }
    
    //this code is triggered when an action is performed on the UI
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped.")
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceFour")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceFour")
    }
    
}


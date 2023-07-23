//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet allow us to reference UI image
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
//var keyword used for making changable array.
//unchangable array    elements of the array.
    let diceArray = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
   

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
//        print("Button Got Tapped")
                                                       //getting random numbers between 0 to 5 included 0 & 5 also.
        diceImageView1.image = UIImage(named: diceArray[Int.random(in: 0...5)])
                                                      //another way getting random numbers from an array.
                                                                        // default value.
        diceImageView2.image = UIImage(named: diceArray.randomElement() ?? "DiceOne")
        
        
    }
    
}


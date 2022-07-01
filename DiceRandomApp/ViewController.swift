//
//  ViewController.swift
//  DiceRandomApp
//
//  Created by Aleksandr F. on 30.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageLeft: UIImageView!
    @IBOutlet weak var diceImageRight: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        rollButton.layer.cornerRadius = 10
        }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        diceImageLeft.image = diceArray.randomElement()
        diceImageRight.image = diceArray.randomElement()
    }
}


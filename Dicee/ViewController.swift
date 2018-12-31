//
//  ViewController.swift
//  Dicee
//
//  Created by amandeep on 2018-12-30.
//  Copyright © 2018 Amandeep Bal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
            updateDiceImages()
    }

    func updateDiceImages(){

        randomDiceIndex1 =  Int.random(in: 1...6)
        randomDiceIndex2 =  Int.random(in: 1...6)
        
        diceImageView1.image = UIImage(named:"dice" + String(randomDiceIndex1))
        diceImageView2.image = UIImage(named:"dice" + String(randomDiceIndex2))

    }
}


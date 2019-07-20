//
//  RollViewController.swift
//  Dice
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - RollViewController: UIViewController 

class RollViewController: UIViewController {
    
    // MARK: Generate Dice Value
    
    // randomly generates a Int from 1 to 6
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    // MARK: Actions
    
    //roll dice with code only
    @IBAction func rollDiceWithCode(){
        let controller: DiceViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController
        controller.firstValue = randomDiceValue()
        controller.secondValue = randomDiceValue()
        
        present(controller, animated: true, completion: nil)
    }
    
    
    
    // roll dice with segue and code
    
    @IBAction func rollTheDice(){
        performSegue(withIdentifier: "rollDice", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! DiceViewController
        
        controller.firstValue = randomDiceValue()
        controller.secondValue = randomDiceValue()
    }
}

//
//  AnswerViewController.swift
//  rockPaperScissors
//
//  Created by nic Wanavit on 7/9/19.
//  Copyright © 2019 Wanavit. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    
    // MARK: Properties
    
    var userValue: Int?
    var computerValue: Int?
    
    // MARK: Outlets
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var computerImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        // The dice will only appear if firstValue and secondValue have been set
        if let firstValue = self.firstValue {
            self.firstDie.image = UIImage(named: "d\(firstValue)")
        } else {
            self.firstDie.image = nil;
        }
        
        if let secondValue = self.secondValue {
            self.secondDie.image = UIImage(named: "d\(secondValue)")
        } else {
            self.secondDie.image = nil
        }
        
        self.firstDie.alpha = 0
        self.secondDie.alpha = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
}

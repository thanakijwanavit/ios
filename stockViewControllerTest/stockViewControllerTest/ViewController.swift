//
//  ViewController.swift
//  stockViewControllerTest
//
//  Created by nic Wanavit on 7/9/19.
//  Copyright © 2019 Wanavit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func experiment(sender: UIButton){
        let nextController = UIImagePickerController()
        
        present(nextController, animated: true, completion: nil)
        
    }
}


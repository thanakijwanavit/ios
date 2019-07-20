//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by nic Wanavit on 7/15/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import UIKit

// MARK: - RandomColorTextFieldDeligate: NSObject, UITextFieldDelegate
class RandomColorTextFieldDelegate : NSObject, UITextFieldDelegate {
    func randomColor() -> UIColor {
        
        let colors:[UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .brown]
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        
        return colors[randomIndex]
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        textField.textColor = randomColor()
        
        return true
    }
}

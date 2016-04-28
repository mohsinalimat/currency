//
//  CalculatorButton.swift
//  Currency
//
//  Created by Nuno Coelho Santos on 25/02/2016.
//  Copyright © 2016 Nuno Coelho Santos. All rights reserved.
//

import Foundation
import UIKit

class CalculatorButton: UIButton {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!

        self.layer.borderWidth = 0.25
        self.layer.borderColor = UIColor(red:0.85, green:0.85, blue:0.85, alpha:1.00).CGColor
        self.tintColor = UIColor(red:0.2, green:0.2, blue:0.2, alpha:1)
        self.layer.masksToBounds = true
        
    }
    
    override var highlighted: Bool {
        
        get {
            return super.highlighted
        }
        set {
            if newValue {
                let fadeIn = CABasicAnimation(keyPath: "backgroundColor")
                fadeIn.fromValue = UIColor(red:0, green:0, blue:0, alpha:0).CGColor
                fadeIn.toValue = UIColor(red:0, green:0, blue:0, alpha:0.12).CGColor
                fadeIn.duration = 0.12
                fadeIn.autoreverses = false
                fadeIn.repeatCount = 1
                
                self.layer.addAnimation(fadeIn, forKey: "fadeIn")
                self.backgroundColor = UIColor(red:0, green:0, blue:0, alpha:0.12)
            }
            else {
                let fadeOut = CABasicAnimation(keyPath: "backgroundColor")
                fadeOut.fromValue = UIColor(red:0, green:0, blue:0, alpha:0.12).CGColor
                fadeOut.toValue = UIColor(red:0, green:0, blue:0, alpha:0).CGColor
                fadeOut.duration = 0.12
                fadeOut.autoreverses = false
                fadeOut.repeatCount = 1
                
                self.layer.addAnimation(fadeOut, forKey: "fadeOut")
                self.backgroundColor = nil
            }
            super.highlighted = newValue
        }
    }
    
}
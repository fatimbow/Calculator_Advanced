//
//  ViewController.swift
//  Calculator_Advanced
//
//  Created by fatma y on 6.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var numCompleted: Bool = true
    
    var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Can not convert display label text to a Double.")
            }
            return number
        }
        set {
            if floor(newValue) == newValue {
                displayLabel.text = String(format: "%0.f", newValue)
            }
            else {
                displayLabel.text = String(newValue)
            }
        }
        
    }

    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        
        if let numValue = sender.currentTitle {
            
            if numCompleted {
                displayLabel.text = numValue
                numCompleted = false
            } else {
                if numValue == "." {
                    let isInt = floor(displayValue) == displayValue
                    if !isInt {
                        return
                    }
                        
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
        
    }
    
    private var calculationLogic = CalculationLogic()
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        numCompleted = true
        
        calculationLogic.setNumber(displayValue)
        
        if let calcMethod = sender.currentTitle {
            
            if let result = calculationLogic.calc(symbol: calcMethod) {
                displayValue = result
            }
    
        }
        
    }
    
}


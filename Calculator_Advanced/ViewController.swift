//
//  ViewController.swift
//  Calculator_Advanced
//
//  Created by fatma y on 6.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    private var numCompleted: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

  
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            
            if numCompleted {
                displayLabel.text = numValue
                numCompleted = false
            } else {
                displayLabel.text = displayLabel.text! + numValue
            }
        }
        
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        numCompleted = true
        displayLabel.text = sender.currentTitle
       
    }
    
    
    
}


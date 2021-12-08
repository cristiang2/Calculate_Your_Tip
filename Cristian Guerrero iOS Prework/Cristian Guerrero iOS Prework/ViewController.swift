//
//  ViewController.swift
//  Cristian Guerrero iOS Prework
//
//  Created by Cristian Guerrero on 11/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sets title in navigation bar
        self.title = "Tip Calculator"
        
        // Keyboard always visible and bill amount always first responder
        billAmountTextField.becomeFirstResponder()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from bill amount text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get total tip by multiplying bill * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount Label
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}



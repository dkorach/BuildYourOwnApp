//
//  SecondViewController.swift
//  BuildYourOwnApp
//
//  Created by Daniel Korach on 7/22/16.
//  Copyright © 2016 Daniel Korach. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    
    var data = ""
    var input = 0.00
    var choice = ""
    var currencySign = ""
    
    
    func validateEntry(entry:String) -> Double {
        if let value = Double(entry) {
            return  value
        }
        else
        {
            return 0
        }
    }



    override func viewDidLoad() {
        super.viewDidLoad()
        countryLabel.text = "Converting from: " + data
        
    }
    
    
    
    @IBAction func onTappedYenButton(sender: AnyObject) {
        input = validateEntry(amountTextField.text!)
        choice = "Yen"
        currencySign = "¥"
    }
    
    @IBAction func onTappedEuroButton(sender: AnyObject) {
        input = validateEntry(amountTextField.text!)
        choice = "Euro"
    }
    
    @IBAction func onTappedPoundButton(sender: AnyObject) {
        input = validateEntry(amountTextField.text!)
        choice = "Pound"
    }
    
    
    @IBAction func onTappedPesoButton(sender: AnyObject) {
        input = validateEntry(amountTextField.text!)
        choice = "Peso"
    }
    
    
    
    
    @IBAction func onTappedCalculateButton(sender: AnyObject) {
        var totalAmount = validateEntry(totalAmountLabel.text!)
        
        switch choice {
        case "Yen" :
            totalAmount = input * (94/10000)
            
        case "Euro" :
            totalAmount = input * (110/100)
            
        case "Pound" :
            totalAmount = input * (131/100)
            
        case "Peso" :
            totalAmount = input * (54/1000)
            
        default:
            print("Default Case")
        }
        
        
        totalAmount = Double(round(100*totalAmount)/100)
        totalAmountLabel.text! = " \(currencySign) + \(totalAmount)"

        }
    
    
    
    
}

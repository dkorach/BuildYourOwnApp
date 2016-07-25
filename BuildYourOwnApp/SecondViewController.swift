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
    @IBOutlet weak var totalAmountTextField: UITextField!
    @IBOutlet weak var conversionCounterLabel: UILabel!
    
    
    
    var data = ""
    var input = 0.00
    var choice = ""
    var currencySign = ""
    var conversionCounter = 0
    
    
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
        currencySign = "€"
    }
    
    @IBAction func onTappedPoundButton(sender: AnyObject) {
        input = validateEntry(amountTextField.text!)
        choice = "Pound"
        currencySign = "£"
    }
    
    
    @IBAction func onTappedPesoButton(sender: AnyObject) {
        input = validateEntry(amountTextField.text!)
        choice = "Peso"
        currencySign = "Mex$"
    }
    
    
    
    
    @IBAction func onTappedCalculateButton(sender: AnyObject) {
        conversionCounter += 1
        var totalAmount = validateEntry(totalAmountTextField.text!)
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
        totalAmountTextField.text! = " \(currencySign) + \(totalAmount)"
       conversionCounter = NSString(string: conversionCounterLabel.text!).integerValue
        conversionCounterLabel.text = "Conversions: + \(conversionCounter)"
        }
    

    
    
    
}

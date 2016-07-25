//
//  ViewController.swift
//  BuildYourOwnApp
//
//  Created by Daniel Korach on 7/22/16.
//  Copyright © 2016 Daniel Korach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countryTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        view.endEditing(true)
        let dvc = segue.destinationViewController as! SecondViewController
        dvc.data = countryTextField.text!

    }
    
}




//
//  ViewController.swift
//  TipCalculator
//
//  Created by riya on 8/30/17.
//  Copyright © 2017 riya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var billInText:UITextField!
    @IBOutlet var tip10OutText:UITextField?
    @IBOutlet var tip15OutText:UITextField?
    @IBOutlet var tip20OutText:UITextField?
    @IBOutlet var total10OutText:UITextField?
    @IBOutlet var total15OutText:UITextField?
    @IBOutlet var total20OutText:UITextField?
    
    @IBAction func buttonTouch(Sender: AnyObject){
        if let bill = billInText.text {
            if let amount = Float(bill){
                if amount > 0 {
                    tip10OutText?.text = String (format: "%.2f", (amount*0.10))
                    tip15OutText?.text = String (format: "%.2f", (amount*0.15))
                    tip20OutText?.text = String (format: "%.2f", (amount*0.20))
                
                    total10OutText?.text = String (format: "%.2f", (amount + (amount*0.10)))
                    total15OutText?.text = String (format: "%.2f", (amount + (amount*0.15)))
                    total20OutText?.text = String (format: "%.2f", (amount + (amount*0.20)))
                }
            }else{
                tip10OutText?.text = nil
                tip15OutText?.text = nil
                tip20OutText?.text = nil
                    
                total10OutText?.text = nil
                total15OutText?.text = nil
                total20OutText?.text = nil
            }
        }
        billInText.resignFirstResponder()
    }
    
    func  textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


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
                tip10OutText?.text = String (amount*0.1)
                tip15OutText?.text = String (amount*0.15)
                tip20OutText?.text = String (amount*0.2)
                
                total10OutText?.text = String (amount + (amount*0.1))
                total15OutText?.text = String (amount + (amount*0.15))
                total20OutText?.text = String (amount + (amount*0.2))
            }else{
                tip10OutText?.text = String ()
                tip15OutText?.text = String ()
                tip20OutText?.text = String ()
                    
                total10OutText?.text = String ()
                total15OutText?.text = String ()
                total20OutText?.text = String ()
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


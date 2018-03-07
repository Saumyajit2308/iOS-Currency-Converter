//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user136776 on 2/25/18.
//  Copyright © 2018 user136776. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inrTextField: UITextField!
    @IBOutlet weak var euroTextField: UITextField!
    
    
    
    @IBAction func calculate(_ sender: UIButton) {
        let eurValue = Double(euroTextField.text!)
        if ( eurValue == nil ) {return}
        let inrValue = eurValue! * 79.56
        
        inrTextField.text = String(inrValue)
    }
    
    @IBAction func clear(_ sender: UIButton) {
        if euroTextField.text == nil && inrTextField.text == nil {
            return
        }
        inrTextField.text = ""
        euroTextField.text = ""
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


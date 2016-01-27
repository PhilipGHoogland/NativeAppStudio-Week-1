//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Swift on 1/27/16.
//  Copyright (c) 2016 PhilipHoogland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountText: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipRateControler: UISegmentedControl!
    
    
    @IBAction func calculateTip(sender: AnyObject) {
        
        var userInput = amountText.text as NSString
        var totalBill: Float = userInput.floatValue
        var index: Int = tipRateControler.selectedSegmentIndex
        var tipRate: Float = 0.15
       
            if index == 0{
                tipRate = 0.15
            }else if index == 1{
                tipRate = 0.20
            } else {
                tipRate = 0.25
            }
        
        var tip: Float = totalBill * tipRate
        
        tipAmountLabel.text = "$\(tip)"
        
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




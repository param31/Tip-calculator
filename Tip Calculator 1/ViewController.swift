//
//  ViewController.swift
//  Tip Calculator 1
//
//  Created by Parampreet Singh on 7/27/20.
//  Copyright © 2020 Parampreet Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel:UILabel!
    
    @IBOutlet weak var totalLabel:UILabel!
    
    @IBOutlet weak var billField:UITextField!
    
    @IBOutlet weak var tipControl:UISegmentedControl!
    
    @IBOutlet weak var totalTwo: UILabel!
    
    @IBOutlet weak var totalThree: UILabel!
    
    @IBOutlet weak var totalFour: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func ontasp(_ sender: Any)
    {
        print("hello")
        
        view.endEditing(true)
        
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
    
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format : "$%.2f", tip)
        totalLabel.text = String(format : "$%.2f", total)
   
    
    
       totalTwo.text = String(format: "$%.2f", total/2)
       totalThree.text = String(format: "$%.2f", total/3)
       totalFour.text = String(format: "$%.2f", total/4)}
    
    
     }




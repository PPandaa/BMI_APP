//
//  ViewController.swift
//  test
//
//  Created by PeterHu on 2018/11/14.
//  Copyright © 2018 PeterHu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextfield: UITextField!
    @IBOutlet weak var weightTextfield: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func start(_ sender: Any) {
        if let height = heightTextfield.text,let weight = weightTextfield.text,let heightValue = Double(height),let weightValue = Double(weight)
        {
            let heightInMeter = heightValue / 100
            let BMI = weightValue / (heightInMeter * heightInMeter)
            let format = String(format: "%.1f", BMI)
            result.text = format
            if(BMI > 24.0){
                statusLabel.text = "TOO FAT"
            }
            else if(BMI < 18.5){
                statusLabel.text = "TOO THIN"
            }
            else{
                statusLabel.text = "GOOD SHAPE"
            }
        }
    }
    

}


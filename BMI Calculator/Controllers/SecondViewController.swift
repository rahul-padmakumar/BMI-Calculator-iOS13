//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Rahul Padmakumar on 15/03/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    
    var bmiValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor =  .darkGray
        
        let bmiLabel = UILabel()
        bmiLabel.text = bmiValue
        bmiLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(bmiLabel)
    }
}

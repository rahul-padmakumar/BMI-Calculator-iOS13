//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Rahul Padmakumar on 16/03/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    var infoTxt: String?
    var color: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var infoTxtLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLabel?.text = bmiValue
        infoTxtLabel?.text = infoTxt
        view.backgroundColor = color
    }
    
    @IBAction func onRecalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion:nil)
    }
}

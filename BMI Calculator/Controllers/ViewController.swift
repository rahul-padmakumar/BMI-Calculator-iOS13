//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    var calculatorBrain: CalculatorBrain = CalculatorBrain()
    
    @IBAction func onHeightChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    @IBAction func onWeightChanged(_ sender: UISlider) {
        let weight = String(
            format: "%.0f",
            sender.value
        )
        weightLabel.text = "\(weight)kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onCalculatePressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI(weight: weightSlider.value, height: heightSlider.value)
        self.performSegue(withIdentifier: "showResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult"{
            let uiController = segue.destination as? ResultsViewController
            uiController?.bmiValue = calculatorBrain.getBmiValue()
            uiController?.color = calculatorBrain.getColor()
            uiController?.infoTxt = calculatorBrain.getInfoText()
        }
    }

}


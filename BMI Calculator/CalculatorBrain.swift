//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rahul Padmakumar on 16/03/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float){
        
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, color: UIColor.blue, infoTxt: "Eat more pies")
        } else if bmiValue < 25.9{
            bmi = BMI(value: bmiValue, color: UIColor.green, infoTxt: "Fit as fiddle")
        } else {
            bmi = BMI(value: bmiValue, color: UIColor.red, infoTxt: "Eat less pies")
        }
    }
    
    func getBmiValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.red
    }
    
    func getInfoText() -> String{
        return bmi?.infoTxt ?? ""
    }
}

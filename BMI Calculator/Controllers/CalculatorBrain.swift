//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Vijay Lama on 3/19/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
   mutating func calculateBMI(height: Float, weight: Float) {
    let bmiValue = weight / pow(height, 2)
    var advice: String?
    var color: UIColor?
    
    if bmiValue < 18.5 {
        advice = "Underweight: Eat More Pies."
        color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    } else if bmiValue < 24.9 {
        advice = "Normalweight: Fit as fiddle!"
        color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    } else {
        advice = "Overweight: Eat less pies!"
        color = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
    }
    
    bmi = BMI(value: bmiValue, advice: advice!, color: color!)

    }
    
     func getBMIValue() -> String {
        
        let bmiFormatted = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmiFormatted
       
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "MISSING SOMETHING"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}

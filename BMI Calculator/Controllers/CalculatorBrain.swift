//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Arturo Rivera on 7/16/20.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMI() -> String {
        let formattedBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return formattedBMI
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
       
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal Weight", color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Overweight", color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
        }
    }
}

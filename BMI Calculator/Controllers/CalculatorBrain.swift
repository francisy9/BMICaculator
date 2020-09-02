//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Francis Yang on 01/09/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight/pow((height), 2)
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Healthy", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        case 25...:
            bmi = BMI(value: bmiValue, advice: "Eat less", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        default:
            bmi = BMI(value: bmiValue, advice: "Error", color: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
        }
        
    }
    func getAdvice() -> String{
        return bmi!.advice
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
   

    
    func getBMIValue() -> String{
        let bmiTo1Dp = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1Dp
    }
   
}

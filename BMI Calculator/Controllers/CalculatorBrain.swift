//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Francis Yang on 01/09/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
       bmi = weight/pow((height), 2)
    }
    
    func getBMIValue() -> String{
        let bmiTo1Dp = String(format: "%.1f", bmi!)
        return bmiTo1Dp
    }
   
}

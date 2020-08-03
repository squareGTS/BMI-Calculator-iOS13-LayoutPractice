//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Maxim Bekmetov on 03.08.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        let bmiToDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalPlace
    }
    
    func getAdvice() -> String {
        let bmiAdvice = bmi?.advice ?? "No advice"
        return bmiAdvice
    }
    
    func getColor() -> UIColor {
        let bmiColor = bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            return bmiColor
        }
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
}

//
//  CalcualatorBrain.swift
//  BMI-iOS
//
//  Created by ibg training 5 on 12/9/20.
//  Copyright © 2020 ibg training 5. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
       
        switch bmiValue {
        case ..<18.5:
            return  bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        case 18.5...24.9:
            return  bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        case 24.9...:
            return  bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        default:
            return print("Enter a bmi")
        }
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func getBMIValue() -> String {
        let roundedBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return roundedBMI
    }
    
}

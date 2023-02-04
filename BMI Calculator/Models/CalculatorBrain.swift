//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Константин Стольников on 2023/02/04.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    let valuesFormat = "%.2f"
    var bmi: BMI?
    
    func calculateBMI(weight: Float, height: Float) -> BMI {
        let value = weight / pow(height, 2)
        switch value {
        case ...18.5: return BMI(
            value: value,
            advice: "underweight",
            color: .systemYellow
        )
        case 18.5..<24.5: return BMI(
            value: value,
            advice: "normal",
            color: .systemBlue
        )
        default: return BMI(
            value: value,
            advice: "overweight",
            color: .systemRed
        )
        }
    }
    
    func getFormattedHeight(height: Float) -> String {
        return String(format: valuesFormat, height) + " m"
    }
    
    func getFormattedWeight(weight: Float) -> String {
        return String(format: valuesFormat, weight) + " Kg"
    }
    
    func getFormattedBMI(value: Float) -> String {
        return value > 500 ? "500+" : String(format: valuesFormat, value)
    }
    
}

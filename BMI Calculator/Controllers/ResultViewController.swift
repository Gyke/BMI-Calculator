//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Константин Стольников on 2023/02/04.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundColorView: UIImageView!

    let calculatorBrain = CalculatorBrain()
    
    var resultBMI: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultValueLabel.text = calculatorBrain.getFormattedBMI(value: resultBMI!.value)
        adviceLabel.text = resultBMI?.advice
        backgroundColorView.backgroundColor = resultBMI?.color
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}

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
    
    var resultBMI: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultValueLabel.text = String(format: "%.2f", resultBMI!)
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}

//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Константин Стольников on 2023/02/04.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 100, green: 100, blue: 100, alpha: 1)

        let label = UILabel()
        label.text = String(format: "%.2f", bmiValue)
        label.frame = CGRect(x: 10, y: 10, width: 100, height: 50)
        
        view.addSubview(label)
        
    }
}

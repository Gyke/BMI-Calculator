//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightValueView: UILabel!
    @IBOutlet weak var heightValueView: UILabel!
    
    @IBOutlet weak var heightSliderView: UISlider!
    @IBOutlet weak var weightSliderView: UISlider!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        if sender == heightSliderView {
            heightValueView.text = String(format: "%.2f", heightSliderView.value) + " m"
        } else {
            weightValueView.text = String(format: "%.0f", weightSliderView.value) + " Kg"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


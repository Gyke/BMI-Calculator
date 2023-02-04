//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var heightSliderView: UISlider!
    @IBOutlet weak var weightSliderView: UISlider!
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultBMI = weightSliderView.value / pow(heightSliderView.value, 2)
        }
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        if sender == heightSliderView {
            heightValueLabel.text = String(format: "%.2f", heightSliderView.value) + " m"
        } else {
            weightValueLabel.text = String(format: "%.0f", weightSliderView.value) + " Kg"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}


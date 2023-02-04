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
    
    let calculatorBrain = CalculatorBrain()
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultBMI = calculatorBrain.calculateBMI(weight: weightSliderView.value, height: heightSliderView.value)
        }
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        if sender == heightSliderView {
            heightValueLabel.text = calculatorBrain.getFormattedHeight(height: heightSliderView.value)
        } else {
            weightValueLabel.text = calculatorBrain.getFormattedWeight(weight: weightSliderView.value)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}


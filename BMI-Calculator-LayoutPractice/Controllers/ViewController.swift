//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm", sender.value)
    }
    
  
    @IBAction func weightSliderChanged(_ sender: UISlider) {
       let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    @IBAction func calculatorPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        print(bmi)
    }
}


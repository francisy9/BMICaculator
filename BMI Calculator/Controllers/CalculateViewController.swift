//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightNumber: UILabel!
    @IBOutlet weak var weightNumber: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmi = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightNumber.text = "\(String (format:"%.2f", sender.value))m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightNumber.text = "\(String(Int(sender.value)))Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        bmi = String(format: "%.1f", weight/pow(height, 2))
        print(bmi)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmi
        }
    }
    
}


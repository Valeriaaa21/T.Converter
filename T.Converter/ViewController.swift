//
//  ViewController.swift
//  T.Converter
//
//  Created by Валерия  on 06.06.2023.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var fLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!{
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempC = Int(round(sender.value))
        cLabel.text = "\(tempC)ºC"
        
        let tempF = Int(round((sender.value * 9 / 5) + 32 ))
        fLabel.text = "\(tempF)ºF"
        
    }
    
}


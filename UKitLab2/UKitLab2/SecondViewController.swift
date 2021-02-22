//
//  SecondViewController.swift
//  UKitLab2
//
//  Created by Ростислав Нурдинов on 23.02.2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    @IBAction func TapSegmentedControl(_ sender: UISegmentedControl) {
        print("Trigger segment control")
    }
    
    
    @IBAction func TapSwitch(_ sender: UISwitch) {
        print("Trigger switch")
    }
    
    
    @IBAction func TapSlider(_ sender: UISlider) {
        print("Trigger slider")
    }
    
    
}

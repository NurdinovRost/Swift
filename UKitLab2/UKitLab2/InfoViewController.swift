//
//  InfoViewController.swift
//  UKitLab2
//
//  Created by Ростислав Нурдинов on 23.02.2021.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func close(_ sender: UIButton) {
        print("close modal view controller")
        self.dismiss(animated: true, completion: nil)
    }
}

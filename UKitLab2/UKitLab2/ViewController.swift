//
//  ViewController.swift
//  UKitLab2
//
//  Created by Ростислав Нурдинов on 22.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CloseKeyboardButton(_ sender: UIButton) {
        let text = TextFieldView.text!
        print(text)
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }

    
    @IBOutlet weak var TextFieldView: UITextField!
}


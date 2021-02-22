//
//  ViewController.swift
//  BundleLab
//
//  Created by Ростислав Нурдинов on 21.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override class func awakeFromNib() {
        print(#function + " trigger before the view is loaded")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#function + " trigger after the view is loaded")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function + " trigger before the view is displayed")
    }
    
    override func viewWillLayoutSubviews() {
        print(#function + " trigger before the view is changed size")
    }
    
    override func viewDidLayoutSubviews() {
        print(#function + " trigger after the view is changed size")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#function + " trigger after the view is displayed")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print(#function + " trigger after change orientation")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function + " trigger before the view is closed")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function + " trigger after the view is closed")
    }
    
    deinit {
        print(#function + " trigger when unloads the object from memory")
    }
    
    override func didReceiveMemoryWarning() {
        print(#function + " triggers when there is not enough memory")
    }
    
    override func loadViewIfNeeded() {
        print(#function + " trigger when view controller’s view if it has not yet been loaded")
    }
    
    override func viewLayoutMarginsDidChange() {
        print(#function + " trigger to notify the view controller that the layout margins of its root view changed.")
    }
    
    override func updateViewConstraints() {
        print(#function + " trigger when the view controller's view needs to update its constraints")
    }

}


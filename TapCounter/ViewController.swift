//
//  ViewController.swift
//  TapCounter
//
//  Created by Alice Aponasko on 1/24/16.
//  Copyright © 2016 justforfun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetButtonTapped(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func resetButtonTapped(sender: AnyObject) {
        numberLabel.text = "0"
    }

    @IBAction func tapButtonTapped(sender: AnyObject) {
        guard let labelText = numberLabel.text else {
            return
        }
        
        if let currentNumber = Int(labelText) {
            numberLabel.text = String(currentNumber + 1)
        }
    }
}


//
//  ViewController.swift
//  Dog years
//
//  Created by Blaed on 4/7/15.
//  Copyright (c) 2015 blaed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var outputYears: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    @IBAction func findButtonPressed(sender: AnyObject) {
        let multiplier = 7 //: Int = Int(7)
        if let years = self.ageInput.text?.toInt() {
            outputYears.text = "Your dog is \(years * multiplier) years old"
        }
    }

}


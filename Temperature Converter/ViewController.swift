//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Madina Ibrahim on 9/24/16.
//  Copyright © 2016 Madina Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    @IBOutlet weak var conversionNumLabel: UILabel!
    @IBOutlet weak var tempEntry: UITextField!
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func converTapped(sender: AnyObject) {
        //print("convert clicked")
        if let result = tempEntry.text { //it sayes only if you can get the text property of this box, I want you to do the following. checking access to it.
            if (result == "") {// here we want to check if we actually have the text in this text box.
                return
            } else {
                if let num = Double(result) { // How we convert to the strings the result that we have? We can get the Double class and create a new instance of it, then pass to it the result and we try to create the number
                    let output = num * (9/5) + 32
                    ResultLabel.text = String(output)// now we have a problem, output is a number , text should be a string. So lets to convert to the string.
                    updateCountByOne()
                }
            }
        }
    }
    func updateCountByOne () {
        count += 1
        conversionNumLabel.text = String(count) + " conversions"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


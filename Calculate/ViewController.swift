//
//  ViewController.swift
//  Calculate
//
//  Created by Ivan Ivanov on 3/18/18.
//  Copyright © 2018 Ivan Ivanov. All rights reserved.
//  git init
//  git add README.md
//  git commit -m "first commit"
//  git remote add origin https://github.com/maxxwell131/Calculate.git
/*
     …or push an existing repository from the command line
     git remote add origin https://github.com/maxxwell131/Calculate.git
     git push -u origin master
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var userIsInTheMiddleOfTyping = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TouchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true // набор числа
        
        print("func TouchDigit")
        print(digit)
    }
    
    @IBAction func ClearDisplay(_ sender: UIButton) {
        display.text = "0"
    }
    @IBAction func PerformOperation(_ sender: UIButton) {
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "Pi" {
                display.text = String(Double.pi)
                userIsInTheMiddleOfTyping = false
            }
        }
    }
}


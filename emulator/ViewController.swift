//
//  ViewController.swift
//  emulator
//
//  Created by Yi Wang on 10/7/18.
//  Copyright © 2018 yi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // import UI elements
    
    @IBOutlet weak var goodMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getTime()
    }

    func getTime() {
        //get date object
        let date = Date()
        let calendar = Calendar.current
        
        let h = calendar.component(.hour, from: date)
        

        
        func goodDay() {
            if h < 6 {
                goodMessage.text = "Good Evening!"
            }
            else if h < 12 {
                goodMessage.text = "Good Morning!"
            }
            else if h < 18 {
                goodMessage.text = "Good Afternoon!"
            }
            else {
                goodMessage.text = "Good Evening!"
            }

        }
            goodDay()
    }
}


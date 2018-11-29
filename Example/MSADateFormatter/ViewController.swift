//
//  ViewController.swift
//  MSADateFormatter
//
//  Created by aslanmehmetsalih on 11/28/2018.
//  Copyright (c) 2018 aslanmehmetsalih. All rights reserved.
//

import UIKit
import MSADateFormatter

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var readableDateButton: UIButton!
    @IBOutlet weak var readableDateTimeButton: UIButton!
    @IBOutlet weak var readableTimeButton: UIButton!
    @IBOutlet weak var readableDateWithSpaceButton: UIButton!
    @IBOutlet weak var readableDateTimeWithSpaceButton: UIButton!
    @IBOutlet weak var customButton: UIButton!
    @IBOutlet weak var customTextField: UITextField!
    
    var dateString = "2001-01-01 01:01:00"
    
    @IBAction func buttonTouchUpInside(_ sender: UIButton) {
        switch sender {
            
        case readableDateButton:
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(.readableDate)
            
        case readableDateTimeButton:
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(.readableDateTime)
            
        case readableTimeButton:
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(.readableTime)
            
        case readableDateWithSpaceButton:
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(.readableDateWithSpace)
            
        case readableDateTimeWithSpaceButton:
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(.readableDateTimeWithSpace)
            
        case customButton:
            let custom = customTextField.text!
            let customFormat = Date.Format.custom(rawValue: custom)
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(customFormat)
            
        default:
            break
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateLabel.text = dateString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


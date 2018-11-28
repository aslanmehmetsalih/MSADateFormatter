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
    @IBOutlet weak var readableShortMonthYearButton: UIButton!
    @IBOutlet weak var readableDateWithSpaceButton: UIButton!
    @IBOutlet weak var readableDateTimeWithSpaceButton: UIButton!
    @IBOutlet weak var customButton: UIButton!
    @IBOutlet weak var customTextField: UITextField!
    
    @IBAction func buttonTouchUpInside(_ sender: UIButton) {
        let dateString = dateLabel.text!
        switch sender {
        case readableDateButton:
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(.readableDate)
        case readableDateTimeButton:
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(.readableDateTime)
        case readableTimeButton:
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(.readableTime)
        case readableShortMonthYearButton:
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(.readableShortMonthYear)
        case readableDateWithSpaceButton:
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(.readableDateWithSpace)
        case readableDateTimeWithSpaceButton:
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(.readableDateTimeWithSpace)
        case customButton:
            let custom = customTextField.text!
            let customFormat = Date.Format.custom(custom)
            outputLabel.text = Date.from(dateString, format: .dateTime)?.to(customFormat)
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


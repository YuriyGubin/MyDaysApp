//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Yuriy on 08.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultButton.layer.cornerRadius = 15
        datePickerOutlet.maximumDate = Date.now
        
    }

    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {

        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        datePickerOutlet.date = Date.now
        let tap: UIDatePicker = UIDatePicker()
        datePicker(tap)
    }
}


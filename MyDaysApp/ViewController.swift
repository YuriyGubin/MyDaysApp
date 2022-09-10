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
    
    
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultButton.layer.cornerRadius = 15

        
    }

    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        guard sender.date < Date.now else {
            infoLabel.text = "Дата должна быть меньше сегодняшней"
            return }
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
}


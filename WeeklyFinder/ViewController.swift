//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Глеб Фандеев on 20.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func findDay(_ sender: UIButton) {
        
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let calendar = Calendar.current
        let date =  calendar.date(from: dateComponents)
        
        if let trueDate = date {
            resultLabel.text = dateFormatter.string(from: trueDate)
        } else {
            resultLabel.text = "Invalid input!"
        }
        
    }
    
}


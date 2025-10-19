//
//  ViewController.swift
//  1ListelemeGiris
//
//  Created by Rabia Çete on 12.10.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dpTarih: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dpTarih.setValue(UIColor.red, forKey: "textColor")
        dpTarih.minimumDate = Date()
        dpTarih.datePickerMode = .date
        


    }


    @IBAction func dpTarih_VC(_ sender: Any) {
        
        let zaman = dpTarih.date
        
        let df = DateFormatter()
        df.dateFormat = "dd.MM.yyyy"
                
        print(tarih)
        
    }
}


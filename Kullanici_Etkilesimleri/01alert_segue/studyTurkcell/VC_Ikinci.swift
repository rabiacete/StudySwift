//
//  VC_Ikinci.swift
//  studyTurkcell
//
//  Created by Rabia Çete on 3.10.2025.
//

import UIKit

class VC_Ikinci: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ikinci did load")

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        print("ikinci did appear")
    }


    @IBAction func btnGeri_TUI(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}

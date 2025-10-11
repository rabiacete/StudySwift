//
//  ViewController.swift
//  06NavigationLab
//
//  Created by Rabia Çete on 4.10.2025.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfAd: UITextField!
    
    @IBOutlet weak var tfSifre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnGirisYap_TUI(_ sender: Any) {
        
        if tfAd.text == "a" && tfSifre.text == "a" {
            performSegue(withIdentifier: "SG_ANA", sender: nil)
        }
        else{
            performSegue(withIdentifier: "SG_KAYIT", sender: nil)
        }
        
    }
}


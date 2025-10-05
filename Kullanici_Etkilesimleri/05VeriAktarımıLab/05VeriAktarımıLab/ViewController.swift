//
//  ViewController.swift
//  05VeriAktarımıLab
//
//  Created by Rabia Çete on 3.10.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfAd: UITextField!
    @IBOutlet weak var tfSoyad: UITextField!
    @IBOutlet weak var tfKod: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnGec_TUI(_ sender: Any) {
        
        if tfKod.text == "123" {
            
            performSegue(withIdentifier: "sgGec", sender: nil)
            
        
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgGec" {
        let vc2 = segue.destination as! VC2
            vc2.adSoyad = tfAd.text! + " " + tfSoyad.text!
            
            }
    }
    
}


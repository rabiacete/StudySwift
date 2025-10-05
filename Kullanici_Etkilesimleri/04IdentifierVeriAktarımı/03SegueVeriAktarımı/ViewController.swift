//
//  ViewController.swift
//  03SegueVeriAktarımı
//
//  Created by Rabia Çete on 3.10.2025.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnGec_TUI(_ sender: Any) {
     let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyboard.instantiateViewController(withIdentifier: "VC2") as! VC2
        vc2.gelen = "gönderilen değer"
        
        present(vc2, animated: true, completion: nil)
        
    }
    //not 2 swift ekrana geçiş sırasında geçilmeden bize araya girme imkanı sağlar
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgGec"{
            let vc2 = segue.destination as! VC2
            vc2.gelen = sender as! String
            
            
        }
    }
}

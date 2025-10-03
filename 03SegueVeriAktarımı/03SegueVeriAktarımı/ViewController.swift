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
        //NOT1 veri aktarımında segue identifier verilmeli
        
        performSegue(withIdentifier: "sgGec", sender: "gönderilen değer")
        
        //not 2- diğer ekrana geçerken ikinci ekrana ait bilgimiz yok
        
        
    }
    //not 2 swift ekrana geçiş sırasında geçilmeden bize araya girme imkanı sağlar
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgGec"{
            let vc2 = segue.destination as! VC2
            vc2.gelen = sender as! String
            
            
        }
    }
}

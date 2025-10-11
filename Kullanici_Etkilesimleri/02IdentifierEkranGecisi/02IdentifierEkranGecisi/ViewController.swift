//
//  ViewController.swift
//  02IdentifierEkranGecisi
//
//  Created by
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnSegueGec_TUI(_ sender: Any) {
        
        //segue başlatma
        performSegue(withIdentifier: "sgGec", sender: nil)
    }
    
    
    @IBAction func btnGecIdentifier_TUI(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC2")
        
        present(vc, animated: true, completion: nil)// gösterme işlemi
        
        
    }
    
}


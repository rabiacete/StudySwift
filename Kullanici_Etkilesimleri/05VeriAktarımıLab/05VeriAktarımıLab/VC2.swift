//
//  VC2.swift
//  05VeriAktarımıLab
//
//  Created by Rabia Çete on 3.10.2025.
//

import UIKit

class VC2: UIViewController {

    var adSoyad :   String?
    
    
    @IBOutlet weak var lblAdSoyad: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblAdSoyad.text = adSoyad
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

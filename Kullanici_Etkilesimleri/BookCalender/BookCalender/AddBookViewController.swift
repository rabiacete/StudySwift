//
//  AddBookViewController.swift
//  BookCalender
//
//  Created by Rabia Çete on 12.10.2025.
//

import UIKit

class AddBookViewController: UIViewController {

    @IBOutlet weak var iv_Kapak: UIImageView!
    
    
    @IBOutlet weak var btn_KapakSec: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iv_Kapak.layer.cornerRadius = 10
        iv_Kapak.layer.masksToBounds = true
        
        btn_KapakSec.layer.cornerRadius = 8
        btn_KapakSec.layer.masksToBounds = true
        
        
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

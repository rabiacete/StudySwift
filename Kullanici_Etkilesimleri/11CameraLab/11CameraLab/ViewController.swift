//
//  ViewController.swift
//  11CameraLab
//
//  Created by Rabia Çete on 8.10.2025.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var arkaPlan: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnKameraAc_TUI(_ sender: Any) {
       
            
            
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            let image = info[UIImagePickerController.InfoKey.editedImage] as! UIImage
            arkaPlan.image = image
            dismiss(animated: true)
        }
    
    
    func KameraKontrolleri(){
        let durum = AVCaptureDevice.authorizationStatus(for: .video)
        
        switch durum {
        case .notDetermined:
            
            default :
            break
        }
    }
    
    func uyariGöster(){
        let baslik =  "kameraya erişilemiyor"
        let mesaj = "erişim içim"
        
        let alert = UIAlertController(title: baslik, message: mesaj, preferredStyle: .alert)
        let btnTamam = UIAlertAction(title: "Tamam", style: .default, handler: nil)
        
        alert.addAction(btnTamam)
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    }



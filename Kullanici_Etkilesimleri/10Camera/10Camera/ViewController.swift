//
//  ViewController.swift
//  10Camera
//
//  Created by Rabia Çete on 8.10.2025.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnKameraAc_TUI(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) { //NOT CİHAZDA KAMERA OLUP OLMADIĞININ KONTROLÜ
            
            var imagePicker = UIImagePickerController() //image picker nesnesi oluştur
            imagePicker.sourceType = .camera //cam aç
            imagePicker.delegate = self
            
            
            
            
            present(imagePicker, animated: true, completion: nil) //gösterilebilir
            
            
            //camde çekilen fotoğrafı kullanabilmek için vcminizin image picker nesnesini kullanmallı ve onun etkilerini yönetebilmeli bunun için yukarda class ViewController: UIViewController , UIImagePickerControllerDelegate eklenmeli
 
            
            
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let görsel = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        
        
        dismiss(animated: true, completion: nil) //KAMERA EKRANI KAPATMA
    }
    
}


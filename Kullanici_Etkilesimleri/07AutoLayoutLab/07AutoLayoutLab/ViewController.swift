//
//  ViewController.swift
//  07AutoLayoutLab
//
//  Created by Rabia Çete on 4.10.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tfKullaniciAdi = UITextField(frame:CGRect(x: 0, y: 0, width: 100, height: 100))
        
        tfKullaniciAdi.placeholder = "Kullanıcı Adı"
        tfKullaniciAdi.borderStyle = .roundedRect
        tfKullaniciAdi.backgroundColor = .blue
        tfKullaniciAdi.textColor = .black
        tfKullaniciAdi.font = UIFont.boldSystemFont(ofSize: 20)
        
        view.addSubview(tfKullaniciAdi)
        
        let tfSifre = UITextField(frame:CGRect(x: 0, y: 0, width: 100, height: 100))
        
        tfSifre.placeholder = "Kullanıcı Adı"
        tfSifre.borderStyle = .roundedRect
        tfSifre.backgroundColor = .blue
        tfSifre.textColor = .black
        tfSifre.font = UIFont.boldSystemFont(ofSize: 20)
        
        view.addSubview(tfSifre)
        
        
        let buton = UIButton(frame:CGRect(x: 0, y: 0, width: 100, height: 100))
        
        buton.setTitle("Giriş", for: .normal)
        buton.backgroundColor = .red
        buton.setTitleColor(.white, for: .normal)
        buton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        view.addSubview(buton)


    }


}


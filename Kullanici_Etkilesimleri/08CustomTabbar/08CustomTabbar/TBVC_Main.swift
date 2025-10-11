//
//  TBVC_Main.swift
//  08CustomTabbar
//
//  Created by
//
//
import UIKit

class TBVC_Main: UITabBarController {

    @IBOutlet var tbvOzel: UIView!
    
    @IBOutlet weak var v1: UIView!
    
    
    @IBOutlet weak var v2: UIView!
    
    @IBOutlet weak var ivFavorilerim: UIImageView!
    
    @IBOutlet weak var ivHesabım: UIImageView!
    
    let seciliDegil = UIColor(named: "SeciliDegil" )
    let secili = UIColor(named: "Secili")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tbvOzel)
        tbvOzel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            
            tbvOzel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 44),
            tbvOzel.heightAnchor.constraint(equalToConstant: 84),
            tbvOzel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tbvOzel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
            
    ])

        tabBar.isHidden = true //not, mevcut tabbarı gizle
        
        Degistir(tabIndex: 0)// not, 1.ekran secili geliyo ama tab secimsiz geliyo onu düzelt
    }
    
    @IBAction func TabDegistir(_ sender: Any) {
        
        let index = (sender as! UIButton).tag
        Degistir(tabIndex: index)
        
    }
    
    func Degistir(tabIndex :  Int)
    {
        v1.backgroundColor = seciliDegil
        v2.backgroundColor = seciliDegil
        
        
        switch tabIndex {
        case 0:
            v1.backgroundColor = secili
        case 1:
            v2.backgroundColor = secili
        default:
            v1.backgroundColor = secili
        }
        
        selectedIndex = tabIndex
    }
  
    
}

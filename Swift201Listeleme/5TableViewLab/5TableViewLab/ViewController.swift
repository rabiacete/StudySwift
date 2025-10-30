//
//  ViewController.swift
//  5TableViewLab
//
//  Created by on 30.10.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    

    @IBOutlet weak var tfMetin: UITextField!
    @IBOutlet weak var tvListe: UITableView!
    
    var liste: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnEkle_TUI(_ sender: Any) {
        liste.append(tfMetin.text!)
        tvListe.reloadData()
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return liste.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel?.text = liste[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            liste.remove(at: indexPath.row)
            tvListe.reloadData()
        }
    }
}


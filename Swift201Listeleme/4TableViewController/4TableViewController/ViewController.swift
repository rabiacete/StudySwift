//
//  ViewController.swift
//  4TableViewController
//


import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return liste.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var liste = ["ele1","ele2","ele4,","ele5","ele7"]
    }


}


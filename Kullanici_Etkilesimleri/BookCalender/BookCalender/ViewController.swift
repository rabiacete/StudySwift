//
//  ViewController.swift
//  BookCalender
//
//  Created by Rabia Çete on 12.10.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var books: [Book] = [
        Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", date: "April 20, 2024", cover: UIImage(named: "gatsby")),
        Book(title: "1984", author: "George Orwell", date: "Feb 7, 2024", cover: UIImage(named: "1984")),
        Book(title: "To Kill a Mockingbird", author: "Harper Lee", date: "Jan 19, 2024", cover: UIImage(named: "mockingbird"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
       tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        let book = books[indexPath.row]
        cell.textLabel?.text = book.title
        cell.detailTextLabel?.text = "\(book.author)\n\(book.date)"
        cell.imageView?.image = book.cover
        return cell
    }
}

struct Book {
    let title: String
    let author: String
    let date: String
    let cover: UIImage?
}

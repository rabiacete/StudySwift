//
//  HomeViewController.swift
//  MyLibrary
//
//  Created by Rabia Çete on 13.10.2025.
//

import UIKit

final class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addButton: UIButton!

    private var books: [Book] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNav()
        setupTable()
        setupFAB()
        loadMock()
        applyBackground()

        // 🔹 TableView köşelerini yuvarla
        tableView.layer.cornerRadius = 16
        tableView.layer.masksToBounds = true
    }

    // MARK: - Navigation Bar
    private func setupNav() {
        title = "Home"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - TableView Setup
    private func setupTable() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.rowHeight = 92
        tableView.estimatedRowHeight = 92
        tableView.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 88, right: 0)
    }

    // MARK: - Floating Add Button
    private func setupFAB() {
        addButton.setImage(UIImage(systemName: "plus"), for: .normal)
        addButton.backgroundColor = .systemBlue
        addButton.tintColor = .white
        addButton.layer.cornerRadius = 28
        addButton.layer.shadowColor = UIColor.black.cgColor
        addButton.layer.shadowOpacity = 0.2
        addButton.layer.shadowRadius = 8
        addButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        addButton.addTarget(self, action: #selector(addTapped), for: .touchUpInside)
    }

    // MARK: - Background Gradient
    private func applyBackground() {
        let g = CAGradientLayer()
        g.colors = [
            UIColor.systemBackground.cgColor,
            UIColor.systemIndigo.withAlphaComponent(0.06).cgColor
        ]
        g.locations = [0, 1]
        g.frame = view.bounds
        view.layer.insertSublayer(g, at: 0)
    }

    // MARK: - Mock Data (Test)
    private func loadMock() {
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd"

        books = [
            Book(
                title: "The Great Gatsby",
                author: "F. Scott Fitzgerald",
                date: df.date(from: "2024-04-20")!,
                coverName: "gatsby_cover",
                coverImage: nil,
                quotes: "So we beat on, boats against the current.",
                summary: "A story of Jay Gatsby's pursuit of the American dream."
            ),
            Book(
                title: "1984",
                author: "George Orwell",
                date: df.date(from: "2024-02-07")!,
                coverName: "1984_cover",
                coverImage: nil,
                quotes: "Big Brother is watching you.",
                summary: "A dystopian novel about totalitarianism and surveillance."
            ),
            Book(
                title: "To Kill a Mockingbird",
                author: "Harper Lee",
                date: df.date(from: "2024-01-19")!,
                coverName: "mockingbird_cover",
                coverImage: nil,
                quotes: "You never really understand a person until you consider things from his point of view.",
                summary: "A reflection on racial injustice and childhood innocence."
            )
        ]

        tableView.reloadData()
    }

    // MARK: - Add Button Action
    @objc private func addTapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let addVC = storyboard.instantiateViewController(withIdentifier: "AddBookViewController") as? AddBookViewController {
            addVC.delegate = self
            navigationController?.pushViewController(addVC, animated: true)
        }
    }
}

// MARK: - TableView DataSource & Delegate
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        books.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as? BookCell else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none
        cell.configure(with: books[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped: \(books[indexPath.row].title)")
    }
}

// MARK: - Delegate for Adding New Book
extension HomeViewController: AddBookDelegate {
    func didAddBook(_ book: Book) {
        books.append(book)
        tableView.reloadData()
    }
}


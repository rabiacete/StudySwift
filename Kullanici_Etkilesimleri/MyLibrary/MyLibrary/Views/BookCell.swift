//
//  BookCell.swift
//  MyLibrary
//
//  Created by Rabia Çete on 13.10.2025.
//

import UIKit

final class BookCell: UITableViewCell {
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        // Kart görünümü
        cardView.layer.cornerRadius = 12
        cardView.layer.masksToBounds = false
        cardView.backgroundColor = .systemBackground
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.08
        cardView.layer.shadowRadius = 8
        cardView.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        // Kapak görseli
        coverImageView.layer.cornerRadius = 10
        coverImageView.clipsToBounds = true
        coverImageView.contentMode = .scaleAspectFill
        
        // Etiket stilleri
        titleLabel.font = .systemFont(ofSize: 17, weight: .semibold)
        authorLabel.font = .systemFont(ofSize: 13)
        authorLabel.textColor = .secondaryLabel
        dateLabel.font = .systemFont(ofSize: 13)
        dateLabel.textColor = .secondaryLabel
    }
    
    func configure(with book: Book) {
        titleLabel.text = book.title
        authorLabel.text = book.author
        
        // 🔹 Kapak görüntüsü öncelik sırası:
        if let image = book.coverImage {
            // Kullanıcının seçtiği kapak
            coverImageView.image = image
            coverImageView.tintColor = nil
            coverImageView.backgroundColor = .clear
        } else if let name = book.coverName, let img = UIImage(named: name) {
            // Assets’ten gelen kapak
            coverImageView.image = img
            coverImageView.tintColor = nil
            coverImageView.backgroundColor = .clear
        } else {
            // Placeholder: sembolik kitap ikonu
            let cfg = UIImage.SymbolConfiguration(pointSize: 24, weight: .regular)
            coverImageView.image = UIImage(systemName: "book.closed.fill", withConfiguration: cfg)
            coverImageView.tintColor = .systemTeal
            coverImageView.backgroundColor = UIColor.systemTeal.withAlphaComponent(0.15)
        }
        
        // 🔹 Tarih formatı
        let f = DateFormatter()
        f.dateStyle = .long
        dateLabel.text = f.string(from: book.date)
    }
}

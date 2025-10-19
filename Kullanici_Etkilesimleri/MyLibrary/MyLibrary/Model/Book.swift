//
//  Book.swift
//  MyLibrary
//
//  Created by Rabia Çete on 13.10.2025.
//

import Foundation
import UIKit

struct Book {
    let title: String
    let author: String
    let date: Date
    let coverName: String? // asset adı (yoksa placeholder)
    let coverImage: UIImage?   // 🔹 artık resim tutabiliyoruz
    let quotes: String?
    let summary: String?
}

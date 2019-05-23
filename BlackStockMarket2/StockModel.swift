//
//  File.swift
//  BlackStockMarket2
//
//  Created by Chris Toney on 5/22/19.
//  Copyright © 2019 Chris Toney. All rights reserved.
//

import Foundation

// MARK: - Welcome
//struct BlackReviewData: Codable {
//    let context: String?
//    let type: String?
//    let itemReviewed, author: Author?
//    let reviewRating: ReviewRating?
//    let publisher: Author?
//
//    enum CodingKeys: String, CodingKey {
//        case context = "@context"
//        case type = "@type"
//        case itemReviewed, author, reviewRating, publisher
//    }
//}
//
//// MARK: - Author
//struct Author: Codable {
//    let type, name: String?
//
//    enum CodingKeys: String, CodingKey {
//        case type = "@type"
//        case name
//    }
//}
//
//// MARK: - ReviewRating
//struct ReviewRating: Codable {
//    let type, ratingValue, bestRating: String?
//
//    enum CodingKeys: String, CodingKey {
//        case type = "@type"
//        case ratingValue, bestRating
//    }
//}

import Foundation

// MARK: - WelcomeElement
struct BlackReviewData: Codable {
    let itemReviewed: ItemReviewed
    let reviewRating: ReviewRating
    let name: String
    let author: Author
    let reviewBody: String
    let publisher: Author
}

// MARK: - Author
struct Author: Codable {
    let type, name: String
    
    enum CodingKeys: String, CodingKey {
        case type = "@type"
        case name
    }
}

// MARK: - ItemReviewed
struct ItemReviewed: Codable {
    let type: String
    let image: String
    let name, servesCuisine, telephone: String
    let address: Address
    
    enum CodingKeys: String, CodingKey {
        case type = "@type"
        case image, name, servesCuisine, telephone, address
    }
}

// MARK: - Address
struct Address: Codable {
    let type, streetAddress, addressLocality, addressRegion: String
    let postalCode, addressCountry: String
    
    enum CodingKeys: String, CodingKey {
        case type = "@type"
        case streetAddress, addressLocality, addressRegion, postalCode, addressCountry
    }
}

// MARK: - ReviewRating
struct ReviewRating: Codable {
    let type, ratingValue: String
    
    enum CodingKeys: String, CodingKey {
        case type = "@type"
        case ratingValue
    }
}






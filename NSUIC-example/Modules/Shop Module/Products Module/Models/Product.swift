//
//  Product.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import Foundation

struct Product: Hashable, Identifiable {
    let id: Int
    let name: String
    let price: Int
    let urlString: String
    let description: String
    
    var imageUrl: URL? {
        URL(string: urlString)
    }
    
    var priceString: String {
        "$\(price)"
    }
}

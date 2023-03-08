//
//  CartEntry.swift
//  NSUIC-example
//
//  Created by Ivan Komatina on 8.3.23..
//

import Foundation

struct CardEntry: Hashable {
    let product: Product
    var quantity: Int
    var price: Int {
        quantity * product.price
    }
}

//
//  CartEntry.swift
//  NSUIC-example
//
//  Created by Ivan Komatina on 8.3.23..
//

import Foundation

struct CartEntry: Hashable {
    var id: Int {
        product.id
    }
    
    let product: Product
    var quantity: Int
    var price: Int {
        quantity * product.price
    }
}

extension [CartEntry]: Identifiable {
    public var id: String {
        map { $0.id }.reduce("") { partialResult, current in
            partialResult + "\(current)"
        }
    }
}

//
//  ShoppingCard.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import Foundation

class ShoppingCard: ObservableObject {
    @Published var card: [Product] = []
    
    func contains(_ product: Product) -> Bool {
        card.contains(where: { $0.id == product.id })
    }
    
    func add(_ product: Product) {
        guard !contains(product) else {
            return
        }
        
        card.append(product)
    }
    
    func remove(_ product: Product) {
        card.removeAll(where: { $0.id == product.id })
    }
}

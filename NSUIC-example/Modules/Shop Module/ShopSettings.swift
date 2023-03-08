//
//  ShoppingCard.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import Foundation

class ShoppingCard: ObservableObject {
    @Published private(set) var card: [CardEntry] = []
    
    func contains(_ id: Int) -> Bool {
        card.contains(where: { $0.product.id == id })
    }
    
    func add(_ product: Product) {
        guard !contains(product.id) else {
            return
        }
        
        card.append(CardEntry(product: product, quantity: 1))
    }
    
    func remove(_ product: Product) {
        card.removeAll(where: { $0.product.id == product.id })
    }
    
    func remove(atOffset offset: IndexSet) {
        card.remove(atOffsets: offset)
    }
}

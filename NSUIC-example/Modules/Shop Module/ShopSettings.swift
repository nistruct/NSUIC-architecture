//
//  ShoppingCart.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import Foundation

class ShoppingCart: ObservableObject {
    @Published var cart: [CartEntry] = []
    
    func contains(_ id: Int) -> Bool {
        cart.contains(where: { $0.product.id == id })
    }
    
    func add(_ product: Product) {
        guard !contains(product.id) else {
            return
        }
        
        cart.append(CartEntry(product: product, quantity: 1))
    }
    
    func remove(_ product: Product) {
        cart.removeAll(where: { $0.product.id == product.id })
    }
    
    func remove(atOffset offset: IndexSet) {
        cart.remove(atOffsets: offset)
    }
}

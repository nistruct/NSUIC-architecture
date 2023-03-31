//
//  ShoppingCart.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import Foundation

class ShoppingCart: ObservableObject {
    @Published var cart: [CartEntry] = []
    @Published var screenSelection: ActiveScreen = .products
    
    func contains(_ id: Int) -> Bool {
        cart.contains(where: { $0.product.id == id })
    }
    
    func add(_ product: Product) {
        guard !contains(product.id) else {
            return
        }
        cart.append(CartEntry(product: product, quantity: 1))
    }
    
    func remove(_ item: Any) {
        if let item = item as? Product {
            cart.removeAll(where: { $0.product.id == item.id })
        } else if let item = item as? CartEntry {
            cart.removeAll(where: { $0.product.id == item.product.id })
        } else if let offset = item as? IndexSet {
            cart.remove(atOffsets: offset)
        }
    }
    
    func showProducts() {
        screenSelection = .products
    }
}

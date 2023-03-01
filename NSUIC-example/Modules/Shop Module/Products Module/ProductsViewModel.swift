//
//  ProductsViewModel.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import Foundation

class ProductsViewModel: ObservableObject {
    private let provider: ProductsProvidable
    
    @Published var products: [Product] = []
    
    init(provider: ProductsProvidable) {
        self.provider = provider
        self.load()
    }
    
    func load() {
        products = provider.getProducts()
    }
}

//
//  ProductsProvider.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import Foundation

protocol ProductsProvidable {
    func getProducts() -> [Product]
}

class ProductsProvider: ProductsProvidable {
    
    func getProducts() -> [Product] {
        Array(0...100)
            .map {
                .init(id: $0,
                      name: "Product \($0)",
                      price: Int.random(in: 0..<1000),
                      urlString: "https://picsum.photos/800?random=\($0)",
                      description: .random())
            }
    }
}

private extension String {
    static func random(length: Int = .random(in: 300..<1000)) -> String {
        let base = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var randomString: String = ""

        for _ in 0..<length {
            let randomValue = arc4random_uniform(UInt32(base.count))
            randomString += "\(base[base.index(base.startIndex, offsetBy: Int(randomValue))])"
        }
        return randomString
    }
}

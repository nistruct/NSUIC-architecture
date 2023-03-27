//
//  Product+Fixture.swift
//  NSUIC-example
//
//  Created by Ivan Komatina on 27.3.23..
//

import Foundation

extension Product {
    static func fixtureProduct() -> Product {
        return fixtureProducts().first!
    }
    
    static func fixtureProducts() -> [Product] {
        let first = Product(id: 0,
                              name: "First name",
                              price: 100,
                              urlString: "",
                              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
        let second = Product(id: 1,
                              name: "Second name",
                              price: 200,
                              urlString: "",
                              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
        let third = Product(id: 2,
                              name: "Third name",
                              price: 300,
                              urlString: "",
                              description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
        return [first, second, third]
    }
}

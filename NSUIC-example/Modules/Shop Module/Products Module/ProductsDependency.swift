//
//  ProductsDependency.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import Foundation

protocol ProductsInjectable {
    var provider: ProductsProvidable { get }
}

final class ProductsDependency: ProductsInjectable {
    
    lazy var provider: ProductsProvidable = {
        ProductsProvider()
    }()
}

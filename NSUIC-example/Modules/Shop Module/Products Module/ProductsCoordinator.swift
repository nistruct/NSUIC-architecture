//
//  ProductsCoordinator.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import SwiftUI
import NSUIC

protocol ProductsCoordinable: Coordinable {
    
}

class ProductsCoordinator<Dependency>: ProductsCoordinable where Dependency: ProductsInjectable {
    private let dependency: Dependency
    
    var view: AnyView {
        AnyView(
            ProductsView(viewModel: ProductsViewModel(provider: self.dependency.provider))
        )
    }
    
    init(dependency: Dependency) {
        self.dependency = dependency
    }
}

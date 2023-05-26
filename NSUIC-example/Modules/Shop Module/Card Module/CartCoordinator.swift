//
//  CartCoordinator.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import SwiftUI
import NSUIC

protocol CartCoordinable: Coordinable {
    func buy(_ products: [CartEntry]) -> AnyView
}

class CartCoordinator: CartCoordinable {
    
    var view: AnyView {
        AnyView(
            CartView(coordinator: self)
        )
    }
    
    func buy(_ products: [CartEntry]) -> AnyView {
        let coord = PaymentCoordinator(products: products)
        return coord.view
    }
}

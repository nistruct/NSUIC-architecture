//
//  ShopCoordinator.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 27.2.23..
//

import SwiftUI
import NSUIC

protocol ShopCoordinable: Coordinable {
    
}

class ShopCoordinator: ShopCoordinable {
    let productsCoordinator = ProductsCoordinator(dependency: ProductsDependency())
    let cartCoordinator = CartCoordinator()
    let settingsCoordinator = SettingsCoordinator()
    
    var view: AnyView {
        AnyView(
            ShopView(products: productsCoordinator,
                     cart: cartCoordinator,
                     settings: settingsCoordinator)
            .environmentObject(observedData)
        )
    }
    
    var observedData = ShoppingCart()
}

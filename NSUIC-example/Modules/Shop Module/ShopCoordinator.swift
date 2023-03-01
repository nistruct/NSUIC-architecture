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
    let cardCoordinator = CardCoordinator()
    let settingsCoordinator = SettingsCoordinator()
    
    var view: AnyView {
        AnyView(
            ShopView(products: productsCoordinator,
                     card: cardCoordinator,
                     settings: settingsCoordinator)
            .environmentObject(observedData)
        )
    }
    
    var observedData = ShoppingCard()
}

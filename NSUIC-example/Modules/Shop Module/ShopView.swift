//
//  ShopView.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 27.2.23..
//

import SwiftUI

struct ShopView: View {
    @EnvironmentObject var shoppingCart: ShoppingCart
    
    let products: any ProductsCoordinable
    let cart: any CartCoordinable
    let settings: any SettingsCoordinable
    
    var body: some View {
        TabView {
            products.view
                .tabItem {
                    Label("Products", systemImage: "list.dash")
                }
            
            cart.view
                .tabItem {
                    Label("Cart", systemImage: "bag")
                }
            
            settings.view
                .tabItem {
                    Label("Settings", systemImage: "person")
                }
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        let coordinator = ShopCoordinator()
        ShopView(products: coordinator.productsCoordinator,
                 cart: coordinator.cartCoordinator,
                 settings: coordinator.settingsCoordinator)
        .environmentObject(ShoppingCart())
    }
}

//
//  ShopView.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 27.2.23..
//

import SwiftUI

struct ShopView: View {
    @EnvironmentObject var shoppingCard: ShoppingCard
    
    let products: any ProductsCoordinable
    let card: any CardCoordinable
    let settings: any SettingsCoordinable
    
    var body: some View {
        TabView {
            products.view
                .tabItem {
                    Label("Products", systemImage: "list.dash")
                }
            
            card.view
                .tabItem {
                    Label("Card", systemImage: "bag")
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
                 card: coordinator.cardCoordinator,
                 settings: coordinator.settingsCoordinator)
    }
}

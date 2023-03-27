//
//  CartView.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var shoppingCart: ShoppingCart
    
    var body: some View {
        List {
            ForEach($shoppingCart.cart, id: \.self) {
                CartItemView(entry: $0, viewModel: CartItemViewModel())
            }.onDelete { indexSet in
                shoppingCart.remove(atOffset: indexSet)
                print(shoppingCart.cart.count)
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        let shoppingCart = ShoppingCart()
        Product.fixtureProducts().forEach {
            shoppingCart.add($0)
        }
        return CartView()
            .environmentObject(shoppingCart)
    }
}

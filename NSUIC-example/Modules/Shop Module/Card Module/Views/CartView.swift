//
//  CartView.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var shoppingCart: ShoppingCart
    
    @State private var selectedProduct: Product?
    @State private var itemsToBuy: [CartEntry]?
    
    var coordinator: any CartCoordinable
    
    private var totalSum: Int {
        shoppingCart.cart
            .map { $0.price * $0.quantity }
            .reduce(0, +)
    }
    
    var body: some View {
        rootView
            .sheet(item: $selectedProduct) {
                ProductDetailsView(product: $0)
            }
            .sheet(item: $itemsToBuy) {
                coordinator.buy($0)
            }
    }
    
    var rootView: some View {
        VStack {
            titleView
            contentView
            Spacer()
            buyButton
        }
    }
    
    var titleView: some View {
        Text("Shopping Cart")
            .font(.system(size: 20))
            .bold()
    }
    
    @ViewBuilder
    var contentView: some View {
        if shoppingCart.cart.isEmpty {
            emptyView
        } else {
            listView
        }
    }
    
    var emptyView: some View {
        VStack(spacing: 10) {
            Spacer()
            Text("Shopping cart is empty")
                .foregroundColor(.gray)
                .bold()
            
            Button(action: {
                shoppingCart.showProducts()
            }) {
                Text("Start shopping")
                    .foregroundColor(.blue)
            }
            Spacer()
        }
    }
    
    var listView: some View {
        List {
            ForEach($shoppingCart.cart, id: \.self) { entry in
                CartItemView(entry: entry) {
                    withAnimation {
                        shoppingCart.remove(entry.wrappedValue)
                    }
                }
                .frame(height: 40)
                .onTapGesture {
                    selectedProduct = entry.wrappedValue.product
                }
            }
            .onDelete { indexSet in
                withAnimation {
                    shoppingCart.remove(indexSet)
                }
            }
            
            HStack {
                Text("Sum:")
                Spacer()
                Text("$" + String(totalSum))
                    .bold()
            }
        }
    }
    
    var buyButton: some View {
        Button(action: {
            itemsToBuy = shoppingCart.cart
        }, label: {
            Text("Buy")
        })
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        let shoppingCart = ShoppingCart()
        Product.fixtureProducts().forEach {
            shoppingCart.add($0)
        }
        return CartView(coordinator: CartCoordinator())
            .environmentObject(shoppingCart)
    }
}

//
//  CartItemView.swift
//  NSUIC-example
//
//  Created by Ivan Komatina on 8.3.23..
//

import SwiftUI

struct CartItemView: View {
    @Binding var entry: CartEntry
    @ObservedObject var viewModel: CartItemViewModel
    
    var body: some View {
        HStack {
            Text(entry.product.name)
            Spacer()
            Text("$" + String(entry.price))
            Spacer()
            QuantityPickerView(quantity: $entry.quantity)
        }
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        let product = Product(id: 1,
                              name: "First",
                              price: 11,
                              urlString: "",
                              description: "Description")
        let cartEntry = CartEntry(product: product, quantity: 2)
        CartItemView(entry: .constant(cartEntry), viewModel: CartItemViewModel())
    }
}

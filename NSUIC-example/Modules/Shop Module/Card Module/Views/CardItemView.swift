//
//  CardItemView.swift
//  NSUIC-example
//
//  Created by Ivan Komatina on 8.3.23..
//

import SwiftUI

struct CardItemView: View {
    @Binding var entry: CardEntry
    @ObservedObject var viewModel: CardItemViewModel
    
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

struct CardItemView_Previews: PreviewProvider {
    static var previews: some View {
        let product = Product(id: 1,
                              name: "First",
                              price: 11,
                              urlString: "",
                              description: "Description")
        let cardEntry = CardEntry(product: product, quantity: 2)
        CardItemView(entry: .constant(cardEntry), viewModel: CardItemViewModel())
    }
}

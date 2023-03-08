//
//  CardItemView.swift
//  NSUIC-example
//
//  Created by Ivan Komatina on 8.3.23..
//

import SwiftUI

struct CardItemView: View {
    var entry: CardEntry
    
    var body: some View {
        HStack {
            Text(entry.product.name)
            Spacer()
            Text("$" + String(entry.price))
            Spacer()
            QuantityPickerView(quantity: .constant(0)) // TODO: Use Binding
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
        CardItemView(entry: CardEntry(product: product,
                                      quantity: 2))
    }
}

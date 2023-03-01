//
//  ProductItemView.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.system(size: 15, weight: .semibold))
                
                Text(product.priceString)
                    .font(.system(size: 12, weight: .regular))
            }
            
            Spacer()
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .foregroundColor(.black)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        let product = Product(id: 0,
                              name: "Product name",
                              price: 100,
                              urlString: "",
                              description: "Product description in two rows klj kjh jh gjk gjk gjkg jg gjh jkjkjh jhj jhg jhg jhv bh jhkv")
        ProductItemView(product: product)
    }
}

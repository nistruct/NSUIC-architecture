//
//  ProductDetailsView.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import SwiftUI

struct ProductDetailsView: View {
    @EnvironmentObject var shoppingCart: ShoppingCart
    
    let product: Product
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                AsyncImage(url: product.imageUrl) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }

                VStack(spacing: 20) {
                    HStack {
                        Text(product.name)
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .bold))
                        
                        Spacer()
                        
                        Text(product.priceString)
                            .foregroundColor(.black)
                            .font(.system(size: 25, weight: .bold))
                    }
                    
                    if shoppingCart.contains(product.id) {
                        removeButton
                    } else {
                        addButton
                    }
                    
                    ScrollView {
                        Text(product.description)
                            .foregroundColor(.gray)
                    }
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    var addButton: some View {
        Button(action: {
            shoppingCart.add(product)
        }) {
            Text("Add to cart")
                .font(.system(size: 20, weight: .bold))
        }
    }
    
    var removeButton: some View {
        Button(action: {
            shoppingCart.remove(product)
        }) {
            Text("Remove from cart")
                .font(.system(size: 20, weight: .bold))
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let product = Product(id: 0,
                              name: "Product name",
                              price: 100,
                              urlString: "https://picsum.photos/800?random=100",
                              description: "Product description in two rows klj kjh jh gjk gjk gjkg jg gjh jkjkjh jhj jhg jhg jhv bh jhkv Product description in two rows")
        ProductDetailsView(product: product)
    }
}

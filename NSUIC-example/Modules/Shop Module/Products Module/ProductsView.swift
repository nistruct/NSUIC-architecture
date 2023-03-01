//
//  ProductsView.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import SwiftUI

struct ProductsView: View {
    @StateObject var viewModel: ProductsViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible())]) {
                    ForEach(viewModel.products, id: \.self) { product in
                        NavigationLink(destination: productDetailsView(for: product)) {
                            ProductItemView(product: product)
                        }
                    }
                }
            }
            .navigationTitle("Products")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
    
    @ViewBuilder
    func productDetailsView(for product: Product) -> some View {
        ProductDetailsView(product: product)
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = ProductsViewModel(provider: ProductsProvider())
        ProductsView(viewModel: vm)
    }
}

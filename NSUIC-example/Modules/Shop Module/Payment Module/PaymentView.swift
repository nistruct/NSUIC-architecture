//
//  PaymentView.swift
//  NSUIC-example
//
//  Created by Aleksandar Nesic on 26.5.23..
//

import SwiftUI

struct PaymentView: View {
    @ObservedObject var viewModel: PaymentViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("PAYMENT")
            
            VStack {
                ForEach(viewModel.items, id: \.self) {
                    Text($0.product.name)
                }
            }
            
            Button(action: {
                viewModel.pay()
            }, label: {
                Text("Pay")
            })
        }
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView(viewModel: .init(items: [], repository: PaymentRepository()))
    }
}

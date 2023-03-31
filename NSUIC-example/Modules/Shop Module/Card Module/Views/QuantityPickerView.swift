//
//  QuantityPickerView.swift
//  NSUIC-example
//
//  Created by Ivan Komatina on 8.3.23..
//

import SwiftUI

struct QuantityPickerView: View {
    @Binding var quantity: Int
    var onEmpty: () -> Void = {}
    
    var body: some View {
        HStack {
            Button(action: {
                quantity -=  1
                
                if quantity == 0 {
                    onEmpty()
                }
            }, label: {
                Text("-")
                    .font(.title)
            })
            .buttonStyle(.borderless)
            
            Text(String(quantity))
            
            Button(action: {
                quantity += 1
            }, label: {
                Text("+")
                    .font(.title)
            })
            .buttonStyle(.borderless)
        }
    }
}

struct QuantityPickerView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityPickerView(quantity: .constant(0))
    }
}

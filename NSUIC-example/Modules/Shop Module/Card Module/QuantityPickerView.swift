//
//  QuantityPickerView.swift
//  NSUIC-example
//
//  Created by Ivan Komatina on 8.3.23..
//

import SwiftUI

struct QuantityPickerView: View {
    @Binding var quantity: Int
    
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Text("-")
                    .font(.title)
            })
            
            Text(String(quantity))
            
            Button(action: {
                
            }, label: {
                Text("+")
                    .font(.title)
            })
        }
    }
}

struct QuantityPickerView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityPickerView(quantity: .constant(0))
    }
}

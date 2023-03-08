//
//  CardView.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var shoppingCard: ShoppingCard
    
    var body: some View {
        List {
            ForEach(shoppingCard.card, id: \.self) {
                CardItemView(entry: $0)
            }.onDelete { indexSet in
                shoppingCard.remove(atOffset: indexSet)
                print(shoppingCard.card.count)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

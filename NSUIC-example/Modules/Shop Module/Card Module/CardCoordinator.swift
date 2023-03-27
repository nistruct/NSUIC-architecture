//
//  CartCoordinator.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import SwiftUI
import NSUIC

protocol CartCoordinable: Coordinable {
    
}

class CartCoordinator: CartCoordinable {
    
    var view: AnyView {
        AnyView(
            CartView()
        )
    }
}

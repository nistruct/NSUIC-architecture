//
//  CardCoordinator.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import SwiftUI
import NSUIC

protocol CardCoordinable: Coordinable {
    
}

class CardCoordinator: CardCoordinable {
    
    var view: AnyView {
        AnyView(
            CardView()
        )
    }
}

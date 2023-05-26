//
//  PaymentCoordinator.swift
//  NSUIC-example
//
//  Created by Aleksandar Nesic on 26.5.23..
//

import SwiftUI
import NSUIC

protocol PaymentCoordinable: Coordinable {
    
}

class PaymentCoordinator: PaymentCoordinable {
    private let dependency: PaymentInjectable
    private let products: [CartEntry]
    
    var view: AnyView {
        let viewModel = PaymentViewModel(items: products, repository: dependency.paymentRepository)
        
        return AnyView(
            PaymentView(viewModel: viewModel)
        )
    }
    
    init(products: [CartEntry]) {
        self.dependency = PaymentDependency()
        self.products = products
    }
}

//
//  PaymentDependency.swift
//  NSUIC-example
//
//  Created by Aleksandar Nesic on 26.5.23..
//

import Foundation

protocol PaymentInjectable {
    var paymentRepository: PaymentRepository { get }
}

struct PaymentDependency: PaymentInjectable {
    var paymentRepository: PaymentRepository
    
    init() {
        paymentRepository = .init()
    }
}

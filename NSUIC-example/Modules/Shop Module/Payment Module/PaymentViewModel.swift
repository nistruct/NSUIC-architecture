//
//  PaymentViewModel.swift
//  NSUIC-example
//
//  Created by Aleksandar Nesic on 26.5.23..
//

import Foundation

struct PaymentRepository {
    func pay() {
        print("Paying")
    }
}

class PaymentViewModel: ObservableObject {
    private let repository: PaymentRepository
    
    let items: [CartEntry]
    
    init(items: [CartEntry], repository: PaymentRepository) {
        self.items = items
        self.repository = repository
    }
    
    func pay() {
        repository.pay()
    }
}

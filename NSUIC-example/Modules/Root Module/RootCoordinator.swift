//
//  RootCoordinator.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 27.2.23..
//

import SwiftUI
import NSUIC

class RootCoordinator: Coordinable {
    let onboardingCoordinator: any OnboardingCoordinable = OnboardingCoordinator()
    let shopCoordinator: any ShopCoordinable = ShopCoordinator()
    
    var view: AnyView {
        AnyView(
            RootView(onboardingCoordinator: onboardingCoordinator,
                     shopCoordinator: shopCoordinator)
                .environmentObject(observedData)
        )
    }
    
    var observedData = AppSettings()
}

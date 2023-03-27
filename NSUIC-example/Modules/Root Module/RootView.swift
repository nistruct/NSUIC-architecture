//
//  RootView.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 27.2.23..
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var settings: AppSettings
    
    let onboardingCoordinator: any OnboardingCoordinable
    let shopCoordinator: any ShopCoordinable
    
    var body: some View {
        ZStack {
            switch settings.state {
            case .onboarding:
                onboardingCoordinator.view
            case .content:
                shopCoordinator.view
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        let coordinator = RootCoordinator()
        RootView(onboardingCoordinator: coordinator.onboardingCoordinator,
                 shopCoordinator: coordinator.shopCoordinator)
            .environmentObject(AppSettings())
    }
}

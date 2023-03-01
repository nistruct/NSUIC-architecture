//
//  OnboardingCoordinator.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 27.2.23..
//

import SwiftUI
import NSUIC

protocol OnboardingCoordinable: Coordinable {
    
}

class OnboardingCoordinator: OnboardingCoordinable {
    
    var view: AnyView {
        AnyView(
            OnboardingView(viewModel: OnboardingViewModel())
        )
    }
}

//
//  AppSettings.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 27.2.23..
//

import Foundation

enum AppState {
    case onboarding
    case content
}

class AppSettings: ObservableObject {
    @Published var state: AppState = .onboarding
}

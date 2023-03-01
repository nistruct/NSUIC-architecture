//
//  SettingsCoordinator.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 28.2.23..
//

import SwiftUI
import NSUIC

protocol SettingsCoordinable: Coordinable {
    
}

class SettingsCoordinator: SettingsCoordinable {
    
    var view: AnyView {
        AnyView(
            SettingsView()
        )
    }
}

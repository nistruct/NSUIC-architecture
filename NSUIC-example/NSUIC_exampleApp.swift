//
//  NSUIC_exampleApp.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 27.2.23..
//

import SwiftUI

@main
struct NSUIC_exampleApp: App {
    let coordinator = RootCoordinator()
    
    var body: some Scene {
        WindowGroup {
            coordinator.view
        }
    }
}

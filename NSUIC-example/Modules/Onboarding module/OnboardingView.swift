//
//  OnboardingView.swift
//  NSUIC-example
//
//  Created by Nikola Nikolic on 27.2.23..
//

import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var settings: AppSettings
    @ObservedObject var viewModel: OnboardingViewModel
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 100) {
                Text("ONBOARDING VIEW")
                    .foregroundColor(.black)
                
                Button(action: { settings.state = .content }) {
                    Text("Login")
                }
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(viewModel: OnboardingViewModel())
    }
}

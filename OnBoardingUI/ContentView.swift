//
//  ContentView.swift
//  OnBoardingUI
//
//  Created by Mon P. on 12/09/2022.

//Basic App Onboarding based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    @AppStorage("shouldShowOnBoarding") var shouldShowOnboarding: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                Text("You are in the main app now!")
                    .padding()
                
            }
            .navigationTitle("Home")
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
                        
        })
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

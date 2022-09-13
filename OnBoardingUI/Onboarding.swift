//
//  Onboarding.swift
//  OnBoardingUI
//
//  Created by Mon P. on 13/09/2022.
//

import Foundation
import SwiftUI
//Onboarding

struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        TabView {
            PageView(title: "Push Notifications",
                     subtitle: "Enable notifications to stay up to date with friends",
                     imageName: "bell",
                     showsDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding
            )
                
            
            PageView(title: "Bookmark",
                     subtitle: "Save your favourite contents anytime, keep your memory",
                     imageName: "bookmark",
                     showsDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding
            )
            
            
            PageView(title: "Trip",
                     subtitle: "Book your dream trips, flights, accommodation, transportations etc.",
                     imageName: "airplane",
                     showsDismissButton: false,
                     shouldShowOnboarding: $shouldShowOnboarding
            )
              
        
            
            
            PageView(title: "Home",
                     subtitle: "Time to go home, we can help you",
                     imageName: "house",
                     showsDismissButton: true,
                     shouldShowOnboarding: $shouldShowOnboarding
            )
            
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageView: View {
    
    let title: String
    let subtitle: String
    let imageName: String
    let showsDismissButton: Bool
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(title)
                .font(.system(size: 32))
                .padding()
            
            Text(subtitle)
                .font(.system(size: 24))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showsDismissButton {
                Button(action: {
                    shouldShowOnboarding.toggle()
                    
                }, label: {
                    Text("Let's Go")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(3.0)
                
                })
            }
        }
    }
    
}

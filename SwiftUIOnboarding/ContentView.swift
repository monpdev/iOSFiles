//
//  ContentView.swift
//  SwiftUIOnboarding
//
//  Created by Mon P. on 21/08/2022.
//
//Onboarding pages with ConcentricOnboarding
// Based on iOS Academy YT Channel


import ConcentricOnboarding
import SwiftUI

struct ContentView: View {
    @State var pageIndex = 0
    var body: some View {
        ConcentricOnboardingView<<#Content: View#>>(
            pages:[
                AnyView(
                OnboardingPage(title: "Send Messages",
                               message:"Chat with all of your friends and send messages in groups!",
                               imageName: "message")
                    ),
                AnyView(
                OnboardingPage(title: "Notifications",
                               message:"Enable push notifications to stay up to date with friends and family",
                               imageName: "bell")
                    ),
                AnyView(
                OnboardingPage(title: "Profile",
                               message:"Customize your profil page to show others what you are into!",
                               imageName: "person.circle")
                    )
                
                ],
            bgColors:[.pink, .blue, .orange],
            duration:2.0
        )
    }
}

struct OnboardingPage: View {
    var title: String
    var message: String
    let imageName: String
    
    var body: some View{
            VStack{
                Spacer()
                Text(title)
                    .font(.system(size:40))
                    .bold()
                    .foregroundColor(.white)
                
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75, alignment: .center)
                    .foregroundColor(.white)
                    .padding(100)
                
                Text(message)
                    .font(.system(size: 28, weight: .light, design: .default))
                    .padding()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                
                Spacer()
                Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

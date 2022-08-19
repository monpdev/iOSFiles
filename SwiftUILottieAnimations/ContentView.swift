//
//  ContentView.swift
//  SwiftUILottieAnimations
//
//  Created by Mon P. on 19/08/2022.
// Displaying animation on SwiftUI app, based on iOS Academy tutorial

import SwiftUI

/*
 - Bring in lottie lib
 - Update some project settings
 - Create custom reusable view
 - Bring in some animations
 
 */

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                LottieView(fileName:"rocket")
                    .frame(width: 250,
                           height: 250,
                           alignment: .center)
                    .padding()
                
                Spacer()
                Spacer()
                Spacer()
            }
            .navigationTitle("SwiftUI Lottie")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

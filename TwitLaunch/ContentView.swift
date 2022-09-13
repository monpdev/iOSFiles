//
//  ContentView.swift
//  TwitLaunch
//
//  Created by Mon P. on 13/09/2022.
//
// Basic app launch animation based on iOS Academy YT channel.

import SwiftUI

struct ContentView: View {
    let color: UIColor = UIColor(
        red: 29/255.0,
        green: 161/255.0,
        blue: 242/255.0,
        alpha: 1
    )
    
    @State var animate: Bool = false
    @State var showSplash: Bool = false
    
    var body: some View {
        VStack{
            ZStack {
            //App Content
            ZStack{
                VStack {
                    Image(systemName: "house")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,
                               height: 200)
                    Text("Home")
                        .font(.system(size:42))
                }
            }
            
            //Splash Animation
            ZStack{
                Color(color)
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100,
                           height: 100)
                    .scaleEffect(animate ? 4 : 1)
                    .animation(Animation
                        .easeIn(duration: 1))
                
                }
            .edgesIgnoringSafeArea(.all)
            .animation(Animation.linear(duration: 0.7))
            .opacity(showSplash ? 1:0)
            
            }
        }
        
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline:
                .now() + 0.3) {
                animate.toggle()
            }
            DispatchQueue.main.asyncAfter(deadline:
                .now() + 0.3) {
                showSplash.toggle()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

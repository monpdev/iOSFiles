//
//  ContentView.swift
//  SwiftUISecrets
//
//  Created by Mon P. on 07/09/2022.
//
// Some basic functionality of SwiftUIX package
//Based on iOS Academy YT Channel

import SwiftUI
import SwiftUIX

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    LinkPresentationView(url: URL(string: "https://www.google.com")!)
                        .frame(width: 200, height: 200)
                    
                    ActivityIndicator()
                        .animated(true)
                        .style(.large)
                    
                    BlurEffectView(style: UIBlurEffect.Style.light){
                        Text("Hello Blur")
                    }
                }
            }
            .navigationTitle("SwiftUIX")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

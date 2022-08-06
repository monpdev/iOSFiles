//
//  ContentView.swift
//  SwiftUIGradients
//
//  Created by Mon P. on 07/08/2022.
// Based on tutorial on iOS Academy

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors:[
                Color("myColor"),
                Color(.systemPink)
            ]),
            startPoint: .top,
            endPoint: .bottom)
            .ignoresSafeArea(.all, edges: .all)
            
            VStack{
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .frame(width: 220, height: 220, alignment: .center)
                    .padding()
                Text("Sunny!")
                    .font(.system(size: 42, weight: .semibold, design: .default))
                    .foregroundColor(Color.white)
                
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

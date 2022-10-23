//
//  ContentView.swift
//  FittingView
//
//  Created by Mon P. on 24/10/2022.
//
// Basic Fitting View based on iOS Academy YT 

import SwiftUI

struct ContentView: View {
    var body: some View {
        ViewThatFits (in: .vertical) {
            
            VStack(alignment: .leading){
                ForEach(0...15, id: \.self) { number in
                    Text("Hello World\(number)")
                        .font(.title)
                }
                Spacer()
            }
            .background(Color.red)
            
            HStack(alignment: .top){
                    ForEach(0...15, id: \.self) { number in
                        Text("Hello World\(number)")
                            .font(.title)
                    }
                    Spacer()
                
            }
            .background(Color.purple)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

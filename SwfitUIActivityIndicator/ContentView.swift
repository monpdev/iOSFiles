//
//  ContentView.swift
//  SwiftUIActivityIndicators
//
//  Created by Mon P. on 22/08/2022.
//
// Activity indicator and spinner based on iOS Academy YT channel.


import ActivityIndicatorView
import SwiftUI

struct ContentView: View {
    
    @State var loading = true
    
    var body: some View {
        NavigationView{
            VStack{
                ActivityIndicatorView(isVisible:$loading,
                    type: .rotatingDots())
                    .foregroundColor(.red)
                    .frame(width:100,
                           height: 100,
                           alignment: .center)
                    .padding()
                ActivityIndicatorView(isVisible:$loading,
                    type: .default())
                    .foregroundColor(.green)
                    .frame(width:100,
                           height: 100,
                           alignment: .center)
                    .padding()
                ActivityIndicatorView(isVisible:$loading,
                    type: .equalizer())
                    .foregroundColor(.blue)
                    .frame(width:100,
                           height: 100,
                           alignment: .center)
                    .padding()
                
                Button(action: {
                    
                    self.loading = true
                }, label:{
                    
                    Text("Load Data")
                        .bold()
                        .frame(width: 220,
                               height: 50,
                               alignment: .center)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
            
                })
            
            
            }
            
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

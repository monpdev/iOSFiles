//
//  ContentView.swift
//  DoubleTabLikeSwiftUI
//
//  Created by Mon P. on 17/09/2022.
//
// Basic Tap Gesture based on iOS Academy YT Channel
// Double tab to show "like"

import SwiftUI

struct ContentView: View {
    @State var showLike = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height: 400)
                    .onTapGesture(count: 2){
                        withAnimation {
                            showLike.toggle()
                        }
                    }
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .frame(width: 100, height: 100)
                    .opacity(showLike ? 1: 0)
                    //.animation(Animation.linear(duration: 1))
            }
            .navigationTitle("Pictory")
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

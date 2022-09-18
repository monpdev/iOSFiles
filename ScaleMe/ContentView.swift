//
//  ContentView.swift
//  ScaleMe
//
//  Created by Mon P. on 18/09/2022.
//
// Basic magnifying (pinch to zoom)
// based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    @State var currentScale: CGFloat = 1
    @State var finalScale: CGFloat = 1
    
    var body: some View {
    NavigationView {
        VStack {
            Text("Magnify Me!")
                .bold()
                .font(.system(size: 32))
                .padding()
                .background(Color.pink)
                .scaleEffect(finalScale + currentScale)
                .gesture(
                    MagnificationGesture()
                        .onChanged {newScale in
                            currentScale = newScale
                        }
                        .onEnded {scale in
                              finalScale = scale
                              currentScale = 0
                            }
                   
                )
            }
                    
            .navigationTitle("Magnification Gesture")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

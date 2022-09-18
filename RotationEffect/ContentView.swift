//
//  ContentView.swift
//  RotationEffect
//
//  Created by Mon P. on 18/09/2022.
//
// Basic Rotation of Text based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    @State var currentAngle: Angle = .degrees(0)
    @State var finalAngle: Angle = .degrees(0)
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .bold()
                    .font(.system(size: 32))
                    .padding()
                    .background(Color.blue)
                    .rotationEffect(currentAngle + finalAngle)
                    .gesture(
                        RotationGesture()
                            .onChanged {angle in
                                currentAngle = angle
                            }
                        
                            .onEnded { angle in
                                finalAngle = angle
                                currentAngle = .degrees(0)
                                
                            }
                    
                    )
                
            }
            .navigationTitle("Rotation Effect")
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

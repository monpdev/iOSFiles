//
//  ContentView.swift
//  CustomShapes
//
//  Created by Mon P. on 18/09/2022.
//
//Basic custom shapes based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    @State var scale: CGFloat = 1
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.scale = 3
                }, label: {
                    semiCircle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(Color.blue)
                        .scaleEffect(scale)
                        
                })
            }
            .navigationTitle("Custom Shapes")
        }
    }
}

struct semiCircle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
//        //lines of path
//
//        //Start at top middle
//        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
//
//        //Move to bottom left
//        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
//
//        // move to bottom right
//        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
//
//        //end at top middle
//        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        path.addArc(center: CGPoint(x: rect.midX,
                                    y: rect.midY),
                    radius: rect.size.width/2,
                    startAngle: .degrees(0),
                    endAngle: .degrees(180),
                    clockwise: false)
        
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

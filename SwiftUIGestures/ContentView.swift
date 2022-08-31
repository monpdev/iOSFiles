//
//  ContentView.swift
//  SwiftUIGestures
//
//  Created by Mon P. on 31/08/2022.
//
// Practice on basic Gestures, based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    @GestureState var isLongPressed = false
    
    @State var offset: CGSize = .zero
    
   
    
    var body: some View {
        
        let longPressGesture = LongPressGesture()
            .updating($isLongPressed) {newValue,state,
                transaction in
                state = newValue
            }
        
        let dragGesture = DragGesture()
            .onChanged { value  in
                self.offset = value.translation
            }
        //use onEnd to bring the circle back to starting point
        
        
        VStack{
            Circle()
                .frame(width: 150, height: 150, alignment: .center)
                .foregroundColor(isLongPressed ?
                                 Color.orange : Color.blue)
                .offset(x: offset.width, y: offset.height)
                .gesture(dragGesture)
                .animation(.default)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  SwiftUITransitions
//
//  Created by Mon P. on 16/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var tapped = true
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            //From
            if !tapped {
                VStack(alignment: .leading) {
                    Text("SwiftUI")
                        .font(.title.weight(.bold))
                        .padding()
                        .matchedGeometryEffect(id: "title", in: namespace)
                    Text("A video about custom transit")
                        .font(.title2.weight(.medium))
                        .padding(2)
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("Today we will learn how to leverage matched geometry effects.")
                        .font(.footnote.weight(.regular))
                        .matchedGeometryEffect(id: "description", in: namespace)
                        .padding()
                }
                .frame(width:300, alignment: .leading)
                .background(Color(.systemPurple))
                .cornerRadius(20)
                .shadow(color: Color(.secondaryLabel),
                        radius: 12,
                        x:0,
                        y:5)
                .matchedGeometryEffect(id: "card", in: namespace)
            }
            else {
                //To
                VStack(alignment: .leading) {
                    Text("SwiftUI")
                        .font(.title.weight(.bold))
                        .padding()
                        .matchedGeometryEffect(id: "title", in: namespace)
                    Text("A video about custom transit")
                        .font(.title2.weight(.medium))
                        .padding(2)
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("Today we will learn how to leverage matched geometry effects.")
                        .font(.footnote.weight(.regular))
                        .matchedGeometryEffect(id: "description", in: namespace)
                        .padding()
                    Spacer()
                }
                .frame(width:350, alignment: .leading)
                .background(Color(.systemPurple))
                .cornerRadius(20)
                .shadow(color: Color(.secondaryLabel),
                        radius: 12,
                        x:0,
                        y:5)
                .matchedGeometryEffect(id: "card", in: namespace)
                
            }
        }
        .onTapGesture {
            withAnimation {
                tapped.toggle()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

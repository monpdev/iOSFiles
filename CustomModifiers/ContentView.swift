//
//  ContentView.swift
//  CustomModifiers
//
//  Created by Mon P. on 28/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image(systemName: "house")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .iconStyle()
                
                Text("Custom Modifier are cool!")
                    .labelStyle()
            }
            .navigationTitle("Custom Modifiers")
        }
    }
}

extension View {
    func iconStyle() -> some View {
        self.modifier(IconStyle())
    }
    
    func labelStyle() -> some View {
        self.modifier(LabelStyle())
    }
}

struct LabelStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 24,
                          weight: .bold,
                          design: .default))
            .multilineTextAlignment(.center)
            .foregroundColor(Color(.systemBlue))
    }
    
}

struct IconStyle: ViewModifier {
    func body(content: Content) -> some View{
        content
            .foregroundColor(Color(.systemPink))
            .frame(width: 100, height: 100, alignment: .center)
            
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  LabelsInSwiftUI
//
//  Created by Mon P. on 30/08/2022.
//
// Basic labels based on iOS Academy YT Channel

import SwiftUI

struct MenuItem: Identifiable {
    var id = UUID()
    let title: String
    let systemImageName: String
}

struct ContentView: View {
    
    let items: [MenuItem] = [
        MenuItem(title: "Home", systemImageName: "house"),
        MenuItem(title: "Profile", systemImageName: "person.circle"),
        MenuItem(title: "Activity", systemImageName: "bell"),
        MenuItem(title: "Settings", systemImageName: "gear"),
        MenuItem(title: "Trip", systemImageName: "airplane"),
        MenuItem(title: "Rate App", systemImageName: "star")
    ]
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                ForEach(items) {item in
                    Label(
                        title: {Text(item.title)},
                        icon: {Image(systemName: item.systemImageName)}
                    )
                    .font(.system(size: 24,
                                  weight: .semibold,
                                  design: .default))
                    .foregroundColor(Color(.systemBlue))
                    .padding()
                    .onTapGesture {
                        print("tapped")
                    }
                    
                    Divider()
                    
                }
               Spacer()
            }
            .navigationTitle("Labels")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12")
    }
}

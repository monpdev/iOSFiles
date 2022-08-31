//
//  ContentView.swift
//  SwiftUIScrollViewReader
//
//  Created by Mon P. on 01/09/2022.
//
//Basic scroll view reader based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollViewReader {scrollView in
                ScrollView {
                    
                    VStack (alignment: .leading ) {
                        Button(action: {
                            withAnimation {
                            scrollView.scrollTo(800, anchor: .center)
                            }
                        }, label: {
                            Text("Scroll to Bottom")
                        })
                        ForEach(0...1000, id:\.self) { num in
                            HStack {
                                Label(title: {Text("Position: \(num)")},
                                      icon: {Image(systemName: "house")}
                                )
                                Spacer()
                                
                            }
                            .id(num)
                            .padding()
                        }
                    }
                }
            }
            .navigationTitle("Scroll View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

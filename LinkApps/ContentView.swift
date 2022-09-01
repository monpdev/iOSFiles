//
//  ContentView.swift
//  LinksApp
//
//  Created by Mon P. on 01/09/2022.
//
// Basic link-in app based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Link(destination: URL(string:
                    "https://www.google.com")!,
                    label: {
                        Label(
                            title: {Text("Search Google")
                                  .bold()
                            },
                            icon: {Image(systemName:
                                "magnifyingglass")
                            .font(.system(size: 22,
                                          weight: .bold,
                                          design: .default))
                            }
                          )
                            
                        .frame(width: 250,
                               height: 50,
                               alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    
                        }
                    )
                }
            .navigationTitle("Links")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

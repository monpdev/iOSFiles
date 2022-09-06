//
//  ContentView.swift
//  SwiftUIMenus
//
//  Created by Mon P. on 05/09/2022.

// Basic SwiftUI Menu based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Menu {
                                Button(action: {}, label: {
                                    Label(
                                        title: {Text("Add")},
                                        icon: {Image(systemName: "doc")}
                                    )
                                })
                                Button(action: {}, label: {
                                    Label(
                                        title: {Text("Rate App")},
                                        icon: {Image(systemName: "star")}
                                    )
                                })
                                Button(action: {}, label: {
                                    Label(
                                        title: {Text("Settings")},
                                        icon: {Image(systemName: "gear")}
                                    )
                                })
                                Button(action: {}, label: {
                                    Label(
                                        title: {Text("Privacy")},
                                        icon: {Image(systemName: "hand.raised")}
                                    )
                                })
                                
                                Menu {
                                    Button(action: {}, label: {
                                        Text("Option 1")
                                    })
                                    Button(action: {}, label: {
                                        Text("Option 2")
                                    })
                                    
                                    } label: {
                                        Text("More Options")
                                    }
                                } label: {
                                    Label(title: {Text("Add")},
                                          icon: {Image(systemName: "plus")}
                                    )
                                }
                                
                            }
                        }
                    }
            .navigationTitle("SwiftUI Menu")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

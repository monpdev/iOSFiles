//
//  ContentView.swift
//  SwiftUIToolbar
//
//  Created by Mon P. on 15/09/2022.
// Basic SwiftUI tool bar based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationTitle("SwiftUI ToolBar")
            .toolbar {
                ToolbarItemGroup(placement:
                    .navigationBarLeading) {
                        
                        Button(action: {
                            print("Go to Notification")
                        }, label: {
                            Image(systemName: "bell")
                        })
                }
                
                ToolbarItemGroup(placement:
                    .navigationBarTrailing) {
                        
                        Button(action: {
                            print("Go to Sign Out")
                        }, label: {
                            Text("Sign Out")
                        })
                }
                
                ToolbarItemGroup(placement:
                    .bottomBar) {
                        
                        Button(action: {
                            print("Go to My Account")
                        }, label: {
                            Text("My Account")
                        })
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

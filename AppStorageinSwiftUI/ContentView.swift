//
//  ContentView.swift
//  AppStorageinSwiftUI
//
//  Created by Mon P. on 30/08/2022.
// Basic form and app storage based on iOS Academy YT Channel
//

import SwiftUI

struct Settings {
    static let firstNameKey = "firstName"
    static let lastNameKey = "lastName"
    static let isSubscribedKey = "isSubscriber"
    
}

struct ContentView: View {
    @AppStorage(Settings.firstNameKey) var firstName = ""
    @AppStorage(Settings.lastNameKey) var lastName = ""
    @AppStorage(Settings.isSubscribedKey) var isSubscriber = false
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    
                    Section(header: Text("Details")){
                        TextField("First Name",
                                  text: $firstName)
                        TextField("Last Name",
                                  text: $lastName)
                    }
                    
                    Section(header: Text("Member Status")){
                        Toggle("Is Subscribed", isOn: $isSubscriber)
                        
                    }
                    
                    
                }
                
            }
            .navigationTitle("App Storage Example")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}

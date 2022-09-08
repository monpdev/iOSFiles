//
//  ContentView.swift
//  DisclosureGroup
//
//  Created by Mon P. on 08/09/2022.
//
//Basic Disclosure Group based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    @State var isExpanded = false
    @State var isTermsExpanded = false
    @State var isPrivacyExpanded = false
    @State var isThirdExpanded = false
    @State var isFourthExpanded = false
    
    var body: some View {
        NavigationView {
            VStack {
                DisclosureGroup("Legal Statements",
                        isExpanded: $isExpanded) {
                    DisclosureGroup("Term of Service",
                            isExpanded: $isTermsExpanded) {
                            Text("Your Term of Service go here. This is for your Term of Service. Please fill up your Term of Service and conditions. Your Term of Service go here. This is for your Term of Service. Please fill up your Term of Service and conditions.")
                                    .multilineTextAlignment(.leading)
                                            
                            }
                            .padding()
                    
                    DisclosureGroup("Privacy Policy",
                            isExpanded: $isPrivacyExpanded) {
                            Text("Your privacy terms go here. This is for your privacy terms. Please fill up your privacy terms and conditions. Your privacy terms go here. This is for your privacy terms. Please fill up your privacy terms and conditions.")
                                    .multilineTextAlignment(.leading)
                                            
                            }
                            .padding()
                    
                    DisclosureGroup("Third Policy",
                            isExpanded: $isThirdExpanded) {
                            Text("Your Third terms go here. This is for your third terms. Please fill up your third terms and conditions. Your third terms go here. This is for your third terms. Please fill up your thrid terms and conditions.")
                                    .multilineTextAlignment(.leading)
                                            
                            }
                            .padding()
                    
                    DisclosureGroup("Fourth Policy",
                            isExpanded: $isFourthExpanded) {
                            Text("Your fourth terms go here. This is for your fourth terms. Please fill up your fourth terms and conditions. Your fourth terms go here. This is for your fourth terms. Please fill up your fourth terms and conditions.")
                                    .multilineTextAlignment(.leading)
                                            
                            }
                            .padding()
                                        
                        }
                        .padding()
                
                        Spacer()
                
            }
            .navigationTitle("Disclosure Group")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

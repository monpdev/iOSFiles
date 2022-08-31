//
//  SettingScreen.swift
//  SwiftUIinUIKit
//
//  Created by Mon P. on 31/08/2022.
//

import SwiftUI

struct SettingScreen: View {
    @State var isOn = false
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Toggle(isOn: $isOn, label: {
                        Text("Is Subscriber")
                    })
                    
                    Toggle(isOn: $isOn, label: {
                        Text("Is Member")
                    })
                    
                    Toggle(isOn: $isOn, label: {
                        Text("Is Follower")
                    })
                    
                }
                
             
            }
            .navigationTitle("Setting")
        }
    }
}

struct SettingScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingScreen()
    }
}

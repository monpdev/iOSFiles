//
//  ContentView.swift
//  UpsellApp
//
//  Created by Mon P. on 15/09/2022.
//
//Basic App Upsell on App Store based on iOS Academy YT Channel

import StoreKit
import SwiftUI

struct ContentView: View {
    @State var appStoreOverlayPresented: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    appStoreOverlayPresented.toggle()
                    
                }, label: {
                    Label(title: {Text("Download Now")
                                    .foregroundColor(Color.white)
                        
                    },
                          icon:
                            {Image("instagram")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 55, height: 55)
                                .cornerRadius(8)
                        }
                    )
                    .padding()
                    .background(Color.gray)
                    .clipShape(Capsule())
                })
                .appStoreOverlay(isPresented: $appStoreOverlayPresented){
                    SKOverlay
                        .AppConfiguration(appIdentifier: "123123123", position: .bottom)
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

//
//  ContentView.swift
//  SwiftUIDownloadImages
//
//  Created by Mon P. on 19/08/2022.
//
// Basic Image downloading from URL in SwiftUI
// Based on iOS Academy YT Channel

import SwiftUI
import SwURL


struct ContentView: View {
    
    init(){
        SwURL.setImageCache(type: .persistent)
    }
    
    var body: some View {
        NavigationView{
            VStack {
                
                RemoteImageView(url: URL(string: "https://iosacademy.io/assets/images/brand/icon.jpg")!,
                                placeholderImage: Image(systemName: "photo")  ,transition: .custom(transition: .opacity, animation: .easeIn(duration: 0.25)))
              
                .progress({progress in
                    return Text("Loading \(progress)")
                })
                                    
                
                Text("Loading Images")
                
            }
            .navigationTitle("Welcome!")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

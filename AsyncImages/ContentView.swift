//
//  ContentView.swift
//  AsyncImages
//
//  Created by Mon P. on 21/09/2022.
//
// Bring image into app using URL
// Based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                AsyncImage(url: URL(string: "https://www.nationalgallery.org.uk/media/34787/n-6601-00-000032-hd.jpg?mode=max&width=1500&height=1080"))
                {image in
                image
                        .resizable()
                        .scaledToFit()
                        
                    
                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.pink)
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

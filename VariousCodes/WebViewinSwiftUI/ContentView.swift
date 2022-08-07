//
//  ContentView.swift
//  WebViewinSwiftUI
//
//  Created by Mon P. on 07/08/2022.
// Part of iOS Academy tutorial

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            SwiftUIWebView(url: URL(string: "https://www.apple.com/"))
                .navigationTitle("WebView")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

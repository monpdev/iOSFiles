//
//  ContentView.swift
//  SwiftUITabBar
//
//  Created by Mon P. on 18/08/2022.
//
//Basic SwiftUI Tab Bar based on iOS Academy YT Channel

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.red
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
            }
            .navigationTitle("Home")
        }
    }
}

struct MusicView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.yellow
                Image(systemName: "music.note")
                    .resizable()
                    .frame(width: 150, height: 200, alignment: .center)
            }
            .navigationTitle("Music")
        }
    }
}

struct SettingsView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
            }
            .navigationTitle("Settings")
        }
    }
}



struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            
            MusicView()
                .tabItem{
                    Image(systemName: "music.note")
                    Text("music")
                }
            
            SettingsView()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

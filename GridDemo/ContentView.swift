//
//  ContentView.swift
//  GridDemo
//
//  Created by Mon P. on 21/10/2022.
//
// Basic Grid Demo based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid{
            Text("SwiftUI 4 Grid")
                .font(.title.bold())
                .background(Color.purple)
            
            GridRow {
                Rect()
                    .gridCellColumns(1)
            }
            
            GridRow {
                Rect()
                    .gridCellColumns(3)
                Rect()
                    .gridCellColumns(1)
            }
            
            GridRow {
                Rect()
                Rect()
                Rect()
            }
        }
        .padding()
    }
}

struct Rect: View {
    var body: some View {
        Rectangle()
            .fill(Color.blue)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  SwiftUIMap
//
//  Created by Mon P. on 24/08/2022.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                GeometryReader{ proxy in
                    MapView(coordinate:
                                CLLocationCoordinate2D(
                                    latitude: 40.7128,
                                    longitude: -74.0060))
                        .frame(width: proxy.size.width,
                               height: proxy.size.height,
                               alignment: .center)
                }
            }
            .navigationTitle("SwiftUI Map")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

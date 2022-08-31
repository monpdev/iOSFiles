//
//  ContentView.swift
//  MapSwiftUI
//
//  Created by Mon P. on 31/08/2022.
//
// Basic MapKit use case, based on iOS Academy YT Channel

import MapKit
import SwiftUI

struct ContentView: View {
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 40.7,
            longitude: -75),
        span: MKCoordinateSpan(
            latitudeDelta: 40,
            longitudeDelta: 40
        )
    )
    
    var body: some View {
        
        NavigationView{
            VStack{
                Map(coordinateRegion: $region)
                
                Button(action: {
                    withAnimation{
                        region.span = MKCoordinateSpan(
                            latitudeDelta: 5,
                            longitudeDelta: 5
                        )
                    }
                    
                } , label: {
                    Text("Zoom in")
                        .bold()
                        .frame(width: 250,
                               height: 50,
                               alignment: .center)
                        .background(Color.green)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                })
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

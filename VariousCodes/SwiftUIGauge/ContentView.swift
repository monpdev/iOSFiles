
//
//  ContentView.swift
//  SwiftUIGauge WatchKit Extension
//
//  Created by Mon P. on 02/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    var gradient = Gradient(colors: [.blue, .pink, .purple, .orange])
    
    var body: some View {
        Gauge(value: 33.0, in: 0.0...100.0) {
            Text("Speed")
                .foregroundColor(Color.blue)
        } currentValueLabel: {
            Text("33")
                .foregroundColor(Color.blue)
        } minimumValueLabel: {
            Text("0")
                .foregroundColor(Color.blue)
        } maximumValueLabel: {
            Text("100")
                .foregroundColor(Color.blue)
        }
        
        .gaugeStyle(CircularGaugeStyle(tint: gradient))
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

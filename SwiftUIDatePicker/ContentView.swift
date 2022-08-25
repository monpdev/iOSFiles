//
//  ContentView.swift
//  SwiftUIDatePicker
//
//  Created by Mon P. on 25/08/2022.
//based on iOS Academy YT channel

import SwiftUI

struct ContentView: View {
    @State var date = Date()
    
    var body: some View {
        NavigationView{
            VStack {
                DatePicker("Trip Date",
                           selection: $date,
                           in: Date()...Date()
                    .addingTimeInterval(12000000))
                .datePickerStyle(GraphicalDatePickerStyle())
                    .padding()
            }
            .navigationTitle("Select Dates")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

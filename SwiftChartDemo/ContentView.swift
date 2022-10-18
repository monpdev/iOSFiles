//
//  ContentView.swift
//  SwiftChartDemo
//
//  Created by Mon P. on 17/10/2022.
//
// Basic Swift Charts in SwiftUI 4 based on iOS Academy YT Channel

import Charts
import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    let type: String
    let value: Double
}

struct ContentView: View {
    let items: [Item] = [
        Item(type: "Engineering", value: 100),
        Item(type: "Design", value: 35),
        Item(type: "Operations", value: 72),
        Item(type: "Sales", value: 22),
        Item(type: "Mgmt", value: 130),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                //Bar Mark
                Chart(items) {item in
                    BarMark(x: .value("Department", item.type),
                            y: .value("Income", item.value)
                    )
                    .foregroundStyle(Color.red.gradient)
                }
                .frame(height:200)
                .padding()
                
                //Line Mark
                Chart(items) {item in
                    LineMark(x: .value("Department", item.type),
                            y: .value("Income", item.value)
                    )
                    .foregroundStyle(Color.blue.gradient)
                }
                .frame(height:200)
                .padding()
                
                //Area Mark
                Chart(items) {item in
                    AreaMark(x: .value("Department", item.type),
                            y: .value("Income", item.value)
                    )
                    .foregroundStyle(Color.green.gradient)
                }
                .frame(height:200)
                .padding()
                
                //Point Mark (scatter plot)
                Chart(items) {item in
                    PointMark(x: .value("Department", item.type),
                            y: .value("Income", item.value)
                    )
                    .foregroundStyle(Color.green.gradient)
                }
                .frame(height:200)
                .padding()
                
            }
            .navigationTitle("Charts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

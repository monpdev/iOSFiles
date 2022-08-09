//
//  ContentView.swift
//  SwiftUIGridDemo
//
//  Created by Mon P. on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    let items = Array(1...1000).map({"Element \($0)"})
    
    let layout = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    
    var body: some View {
        NavigationView{
            ScrollView (.vertical){
                LazyVGrid(columns: layout, content: {
                    ForEach(items, id: \.self){item in
                        VStack{
                        Image(item)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .border(Color.secondary)
                            .cornerRadius(12)
                            .padding()
                        
                        Spacer()
                            
                        Button("GET"){
                            //do something
                        }
                        .foregroundColor(Color.blue)
                        .padding()
                    }
                    }
                })
            }
            .navigationTitle("App Store")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

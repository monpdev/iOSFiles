//
//  ContentView.swift
//  NavDemo
//
//  Created by Mon P. on 18/10/2022.
//

import SwiftUI

//Model
struct Company: Identifiable, Hashable{
    var id = UUID()
    let name:String
}

struct Stock: Identifiable, Hashable{
    var id = UUID()
    let ticker:String
}

struct ContentView: View {
    let companies: [Company] = [
        .init(name: "Apple"),
        .init(name: "Facebook"),
        .init(name: "Google"),
        .init(name: "Microsoft"),
        .init(name: "Dell")
    ]
    
    let stocks: [Stock] = [
        .init(ticker: "AAPL"),
        .init(ticker: "FB"),
        .init(ticker: "GOOG"),
        .init(ticker: "MSFT"),
        .init(ticker: "DLL"),
    ]
    
    @State var path: [Company] = []
    
    var body: some View {
        NavigationStack (path: $path){
            VStack {
                List(companies){company in
                    NavigationLink(company.name,
                                   value: company)
                }
            
                .navigationDestination(for: Company.self) {company in
                    VStack {
                        Text(company.name)
                    }
                }
                
                Button("Go back") {
                    path = [
                        companies[1],
                        companies[0],
                        companies[2]
                    ]
                        //popToRootViewController
                    }
                .padding(12)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

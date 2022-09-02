//
//  ContentView.swift
//  DynamicList
//
//  Created by Mon P. on 01/09/2022.
//
//Basic dynamic list based on iOS Academy YT Channel

import SwiftUI

struct Stock: Identifiable{
    var id = UUID()
    let title: String
}

class StocksViewModel: ObservableObject{
    @Published var stocks: [Stock] = [
        Stock(title: "Apple"),
        Stock(title: "Google"),
        Stock(title: "Amazon"),
        Stock(title: "MSFT")
    ]
    
}

struct ContentView: View {
    @StateObject var viewModel = StocksViewModel()
    @State var text = ""
    var body: some View {
        NavigationView{
            VStack {
                Section(header: Text("Add New Stock")) {
                    TextField("Company Name...", text: $text)
                        .padding()
                    
                    Button(action: {
                        self.tryToAddToList()
                    }, label: {
                        Text("Add to list")
                            .bold()
                            .frame(width: 200,
                                   height: 50,
                                   alignment: .center)
                            .background(Color.green)
                            .cornerRadius(8)
                            .foregroundColor(Color.white)
                    })
                    
                }
                
                List{
                    ForEach(viewModel.stocks){stock in
                        StockRow(title: stock.title)
                    }
                }
            }
            .navigationTitle("Stocks")
        }
    }
    
    func tryToAddToList(){
        guard !text.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        
        let newStock = Stock(title: text)
        viewModel.stocks.append(newStock)
        text = ""
    }
}

struct StockRow: View {
    let title: String
    
    var body: some View {
        Label(
            title: { Text(title)},
            icon: {Image(systemName: "chart.bar") }
        )
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

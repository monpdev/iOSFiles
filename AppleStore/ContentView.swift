//
//  ContentView.swift
//  AppleStore
//
//  Created by Mon P. on 24/09/2022.
//
// Basic use of StoreKit based on iOS Academy YT Channel

import StoreKit //StoreKit 2?
import SwiftUI

//Fetch Products
//Purchase Products
//Update UI/Fetch Product State


struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "applelogo")
                .resizable()
                .frame(width:70, height:70)
            
            Text("Apple Store")
                .bold()
                .font(.system(size:32))
            
            Spacer()
            
            Image("watch")
                .resizable()
                .aspectRatio(nil,contentMode: .fit)
                .frame(width:300, height:300)
            
            Spacer()
            
            if let product = viewModel.products.first {
                Text(product.displayName)
                Text(product.description)
                Button(action: {
                    if viewModel.purchasedIds.isEmpty {
                        viewModel.purchase()
                    }
                }) {
                    Text(viewModel.purchasedIds.isEmpty ? "Buy Now (\(product.displayPrice)" : "Purchased")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 220, height: 50)
                        .background(viewModel.purchasedIds.isEmpty ? Color.blue : Color.green)
                        .cornerRadius(8)
                }
                
            }
            
        }
        .onAppear {
            viewModel.fetchProducts()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

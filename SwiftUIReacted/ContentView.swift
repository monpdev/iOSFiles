//
//  ContentView.swift
//  SwiftUIRedacted
//
//  Created by Mon P. on 01/09/2022.
//
// Code to demonstrate redacted modifier based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    @State var isLoading = true
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack {
                    ForEach(0...10, id: \.self) { _ in
                        PostView()
                            .frame(height: 150)
                            .padding(12)
                            
                    }
                }
                .redacted(reason: isLoading ? .placeholder : [])
            }
            .navigationTitle("My Media")
            .onAppear(perform: {
                fetchData()
            })
        }
    }
    
    func fetchData() {
        DispatchQueue.main.asyncAfter(deadline: .now()+4 ) {
            isLoading = false
        }
    }
    
}


struct PostView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack{
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 55, height: 55, alignment: .center)
                    .unredacted()
                
                Text("Firstname Lastname")
                    .bold()
                    .font(.system(size: 24))
            }
            Text("This is a post with texts to demonstrate SwiftUI Redacted Modifier. Keep Working!")
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

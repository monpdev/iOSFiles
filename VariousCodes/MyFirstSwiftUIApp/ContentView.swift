//
//  ContentView.swift
//  MyFirstSwiftUIApp
//
//  Created by Mon P. on 13/08/2022.
//
// Explore different features of SwiftUI based on IOS Academy YT Channel.

import SwiftUI

struct Data: Identifiable{
    var id = UUID()
    let title:String
    let imageName: String
    let imageDescription: String
    let imageTakenDate: String
}


struct ContentView: View {
    
    var items = [Data]()
    
    var body: some View {
        NavigationView{
            List(items){data in
                NavigationLink(destination: DataView(data:data)){
                    HStack{
                        
                        Image(data.imageName)
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .cornerRadius(10)
                        
                        Text(data.title)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                    }
                }
                
            }
            .navigationBarTitle("Photos")
        }
    }
}


struct DataView: View {
    
    var data: Data
    
    var body: some View {
        VStack{
            Image(data.imageName)
                .resizable()
                .frame(width: 330, height: 300, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            
            Text(data.imageDescription)
                .font(.largeTitle)
                .padding(5)
            
            Spacer()
            
            Text(data.imageTakenDate)
                .padding(5)
        }
        .navigationBarTitle(data.title)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            
            ContentView(items: [
                Data(title: "Beach Number 1",
                     imageName: "beach1",
                     imageDescription: "This is a beach. This is a beach. This is a beach. This is a beach. This is a beach. This is a beach.This is a beach. This is a beach.",
                     imageTakenDate: "1/1/2020"),
                Data(title: "Beach Number 2",
                     imageName: "beach2",
                     imageDescription: "This is beach number 2. This is beach number 2. This is beach number 2. This is beach number 2. This is beach number 2. This is beach number 2. This is beach number 2.",
                     imageTakenDate: "1/15/2020"),
                Data(title: "Dogs",
                     imageName: "dog",
                     imageDescription: "Cute dogs. They are beautiful animals. Dogs are men's best friends. Dogs are men's best friends.Dogs are men's best friends. Dogs are men's best friends. Dogs are men's best friends. Dogs are men's best friends. ",
                     imageTakenDate: "1/11/2020"),
                Data(title: "A Supercar",
                     imageName: "car",
                     imageDescription: "This is a super car. They are fast. They are powerful. They are expensive.  They are fast. They are powerful. They are expensive. They are fast. They are powerful. They are expensive. ",
                     imageTakenDate: "19/1/2021"),
                Data(title: "Beautiful Nature",
                     imageName: "nature",
                     imageDescription: "Picture of beautiful natural scene",
                     imageTakenDate: "1/8/2019"),
                Data(title: "Gorgeous Wedding",
                     imageName: "wedding",
                     imageDescription: "Beautiful Wedding",
                     imageTakenDate: "22/09/2020"),
                Data(title: "A Big Fountain",
                     imageName: "fountain",
                     imageDescription: "This is a cool fountain",
                     imageTakenDate: "10/1/2020")
                
            ])
            .environment(\.colorScheme, .dark)
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            
        
        
        
        ContentView(items: [
            Data(title: "Beach Number 1",
                 imageName: "beach1",
                 imageDescription: "This is a beach. This is a beach. This is a beach. This is a beach. This is a beach. This is a beach.This is a beach. This is a beach.",
                 imageTakenDate: "1/1/2020"),
            Data(title: "Beach Number 2",
                 imageName: "beach2",
                 imageDescription: "This is beach number 2. This is beach number 2. This is beach number 2. This is beach number 2. This is beach number 2. This is beach number 2. This is beach number 2.",
                 imageTakenDate: "1/15/2020"),
            Data(title: "Dogs",
                 imageName: "dog",
                 imageDescription: "Cute dogs. They are beautiful animals. Dogs are men's best friends. Dogs are men's best friends.Dogs are men's best friends. Dogs are men's best friends. Dogs are men's best friends. Dogs are men's best friends. ",
                 imageTakenDate: "1/11/2020"),
            Data(title: "A Supercar",
                 imageName: "car",
                 imageDescription: "This is a super car. They are fast. They are powerful. They are expensive.  They are fast. They are powerful. They are expensive. They are fast. They are powerful. They are expensive. ",
                 imageTakenDate: "19/1/2021"),
            Data(title: "Beautiful Nature",
                 imageName: "nature",
                 imageDescription: "Picture of beautiful natural scene",
                 imageTakenDate: "1/8/2019"),
            Data(title: "Gorgeous Wedding",
                 imageName: "wedding",
                 imageDescription: "Beautiful Wedding",
                 imageTakenDate: "22/09/2020"),
            Data(title: "A Big Fountain",
                 imageName: "fountain",
                 imageDescription: "This is a cool fountain",
                 imageTakenDate: "10/1/2020")
            
        ])
        .environment(\.colorScheme, .light)
        .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
        
        }
    }
}

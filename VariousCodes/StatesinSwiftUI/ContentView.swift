//
//  ContentView.swift
//  StatesinSwiftUI
//
//  Created by Mon P. on 12/08/2022.
//
// Based on iOS Academy YT Channel



import SwiftUI

struct ContentView: View {
    
    let images: [Image] = [
        Image("image"),
        Image(systemName: "bookmark"),
        Image(systemName: "ear"),
        Image("image"),
        Image("image")
        
    ]
   
    var body: some View {
        NavigationView{
            List(0..<5){index in
                NavigationLink(destination: MyImageView(image:self.images[index], index:index)){
                    Text("Item \(index+1)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue:"iPhone 12"))
    }
}

struct MyImageView: View {
    let image: Image
    @State var index:Int
    let colors = [
        Color.red,
        Color.blue,
        Color.green,
        Color.purple,
        Color.orange
    
    ]
    var body: some View {
        VStack{
            Spacer()
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        
            Spacer()
        }
        .background(colors[index])
        .onTapGesture {
            if self.index < 4 {
                self.index += 1
            }
            else{
                self.index = 0
            }
            
        }
    }
}

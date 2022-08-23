//
//  ContentView.swift
//  SwiftUIPopups
//
//  Created by Mon P. on 23/08/2022.
//
// Based on iOS Academy YT Channel

import PopupView
import SwiftUI

struct ContentView: View {
    @State var isShowingPopUp = false
    
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
                    self.isShowingPopUp = true
                }, label: {
                    Text("Show Pop Up")
                        .frame(width: 220,
                               height: 50,
                               alignment: .center)
                        .background(Color.green)
                        .cornerRadius(8)
                        .padding()
                })
                
            }
            .popup(isPresented: $isShowingPopUp, type: .toast, position: .bottom, animation: .easeInOut, autohideIn: nil,  closeOnTap: true, closeOnTapOutside: false, view: {
                Toast()
            })
            .navigationTitle("SwiftUI Toasts")
            
        }
    }
}


struct Toast: View{
    var body: some View{
        ZStack{
            Color.green
            
            HStack{
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                    .foregroundColor(Color.white)
                    .padding()
                Text("You have new messages waiting for you")
                    .foregroundColor(.white)
            }
            .padding()
        }
        .cornerRadius(12)
        .padding()
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

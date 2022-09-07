//
//  ContentView.swift
//  CustomSwiftUITabBar
//
//  Created by Mon P. on 06/09/2022.
//
//Basic Custom SwiftUI TabBar based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    @State var presented = false
    
    let icons = [
        "house",
        "gear",
        "plus",
        "lasso",
        "message"
    ]
    
    var body: some View {
        VStack (spacing: 0){
            //Content
            ZStack{
                
                Spacer().fullScreenCover(isPresented: $presented, content: {
                    Text("Full Screen that can be closed.")
                    Button(action: {
                        presented.toggle()
                    }, label: {
                        Text("Close")
                            .frame(width: 200, height: 50)
                            .background(Color.pink)
                            .cornerRadius(12)
                    })
                })
                
                switch selectedIndex {
                case 0:
                    HomeView()
                case 1:
                    NavigationView{
                        VStack{
                            Text("Second Screen")
                        }
                        .navigationTitle("Settings")
                    }
                case 2:
                    NavigationView{
                        VStack{
                            Text("Third Screen")
                        }
                        .navigationTitle("Add")
                    }
                case 3:
                    NavigationView{
                        VStack{
                            Text("Fourth Screen")
                        }
                        .navigationTitle("Edit")
                    }
                default:
                    NavigationView{
                        VStack{
                            Text("Fifth Screen")
                        }
                        .navigationTitle("Message")
                    }
                }
            }
            
            
            Divider()
                .padding(.bottom, 20)
            
            HStack {
                ForEach(0..<5 , id:\.self) {number in
                    Spacer()
                    Button(action: {
                        if number == 2{
                            presented.toggle()
                        }
                        else {
                            self.selectedIndex = number
                        }
                    }, label: {
                        if number == 2 {
                            Image(systemName: icons[number])
                                .font(.system (size: 25,
                                               weight: .regular,
                                               design: .default))
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60)
                                .background(Color.blue)
                                .cornerRadius(30)
                                
                        }
                        else {
                            Image(systemName: icons[number])
                                .font(.system (size: 25,
                                               weight: .regular,
                                               design: .default))
                                .foregroundColor(selectedIndex == number ? Color(.label): Color(UIColor.lightGray))
                            
                        }
                    })
                    Spacer()
                }
            }
        }
    }
}


struct HomeView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("First Screen")
            }
            .navigationTitle("Home")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

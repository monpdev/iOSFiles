//
//  ContentView.swift
//  SwiftUIMVVM
//
//  Created by Mon P. on 10/08/2022.
//

import SwiftUI

struct ToDoListItem: Identifiable{
    var id = UUID()
    var action: String
    
}

class ToDoList: ObservableObject {
    @Published var items:[ToDoListItem] = []
}


struct ContentView: View {
    @ObservedObject var viewModel: ToDoList = ToDoList()
    var body: some View {
        NavigationView{
            VStack{
                List(viewModel.items) {item in
                    Text(item.action)
                    
                }
            }
            .navigationTitle("To Do List")
            .navigationBarItems(trailing:
                Button(action: {
                self.viewModel.items = [
                    ToDoListItem(action: "House Chore"),
                    ToDoListItem(action: "Swimming"),
                    ToDoListItem(action: "Drop off"),
                    ToDoListItem(action: "Working"),
                    ToDoListItem(action: "Picking Up"),
                    ToDoListItem(action: "Going to Park"),
                
                ]
    
            }, label:{
                Text("Refresh")
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

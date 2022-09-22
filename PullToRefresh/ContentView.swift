//
//  ContentView.swift
//  PullToRefresh
//
//  Created by Mon P. on 21/09/2022.
//
// Basic Pull to refresh based on iOS Academy YT Channel

import SwiftUI

struct User: Codable {
    let name: String
    let email: String
}

struct UserViewModel: Identifiable  {
    
    var id = UUID().uuidString
    let user: User

}


class UsersViewModel: ObservableObject {
    @Published var users = [
        UsersViewModel(
            user:  User(name: "Alex",
            email: "alex111@gmail.com") )
       
    ]
    
    func refreshUsers(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            return
        }
        
        let task =
        URLSession.shared.dataTask(with: url)
        { data, _, error in
            guard let data = data, error == nil
            else {
                return
                
            }
            
            do {
                let newUsers = try
                    JSONDecoder().decode([User].self,
                    from: data)
                DispatchQueue.main.async {
                    //Something is wrong on this line
                    self.users.append(contentsOf:
                                    newUsers.compactMap({
                        return UserViewModel(user: $0)
                    }))
                }
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}


struct ContentView: View {
    @ObservedObject var viewModel = UsersViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.users) { userVM in
                    VStack (alignment: .leading){
                        Text(userVM.user.name)
                            .font(.title)
                            .bold()
                        Text(userVM.user.email)
                            .font(.body)
                    }
                }
                .refreshable {
                    self.viewModel.refreshUsers()
                }
                
            }
            .navigationTitle("Friend List")
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

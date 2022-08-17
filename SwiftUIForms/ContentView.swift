//
//  ContentView.swift
//  SwiftUIForms
//
//  Created by Mon P. on 16/08/2022.
//
//Basic SwiftUI forms based on iOS academy YT channel

import SwiftUI

class FormViewModel: ObservableObject {
    @State var firstName = ""
    @State var lastName = ""
    @State var password = ""
    @State var passwordAgain = ""
    @State var streetAddress = ""
    @State var city = ""
    @State var province = ""
    @State var postalCode = ""
    @State var country = ""
}

struct ContentView: View {
  
    @StateObject var viewModel = FormViewModel()
    var body: some View {
        NavigationView {
            VStack {
                Form{
                    Section{
                        TextField("First Name", text: $viewModel.firstName)
                        TextField("Last Name", text: $viewModel.lastName)
                    }
                    
                    Section (footer: Text("Your password must be at least 8 characters long.")){
                        
                        SecureField("Create Password", text: $viewModel.password)
                        SecureField("Confirm Password", text: $viewModel.passwordAgain)
                    }
                    
                    Section(header: Text("Mailing Address")){
                        TextField("Street Address", text: $viewModel.streetAddress)
                        TextField("City", text: $viewModel.city)
                        TextField("State or Province", text: $viewModel.province)
                        TextField("Postal Code", text: $viewModel.postalCode)
                        TextField("Country", text: $viewModel.country)
                    }
                }
                
                Divider()
                
                Button(action: {
                    
                }, label: {
                    Text("Continue")
                        .frame(width: 250,
                               height: 50,
                               alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                .padding()
                
            }
            .navigationTitle("Create Account")
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

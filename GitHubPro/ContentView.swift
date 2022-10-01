//
//  ContentView.swift
//  GitHubPro
//
//  Created by Mon P. on 27/09/2022.
//
//Making Layout like GitHub Pro
//Based on iOS Academy YT Channel

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack (alignment: .leading){
            CircleView()
            HeadersLabels()
                .padding(.bottom, 12)
            FeaturesView()
            
            HStack{
                Spacer()
                Button(action: {
                    //do stuff
                } , label: {
                    Text("$3.99 per month")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(8)
                })
                Spacer()
            }
            
            HStack{
                Spacer()
                Link("Terms of Services", destination: URL(string: "http://github.com")!)
                    .foregroundColor(Color.gray)
                    .padding(1)
                
                Link("Privacy Policy", destination: URL(string: "http://github.com")!)
                    .foregroundColor(Color.gray)
                    .padding(1)
                
                Link("Details", destination: URL(string: "http://github.com")!)
                    .foregroundColor(Color.gray)
                    .padding(1)
                
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}

struct FeaturesView: View {
    var body: some View {
        let features: [String] = [
        "GitHub Support via email",
        "Required pull request reviewers",
        "GitHub Pages",
        "Wikis",
        "Protected branches",
        "Code owners",
        "Auth-linked references",
        "Multiple pull request reviewers"
        ]
        
        ScrollView(.vertical) {
            ForEach(features, id:\.self) {feature in
                HStack{
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(Color(UIColor.systemGray2))
                        .padding(.trailing, 8)
                    
                    Text(feature)
                        .bold()
                        .font(.system(size: 22))
                        .opacity(0.7)
                    
                    Spacer()
                }

                .padding(.top, 6)
                .padding(.leading, 4)
                .padding(.trailing, 4)
                .padding(.bottom, 3)
            }
        }
    }
}

struct HeadersLabels: View {
    var body: some View {
        Text("GitHub Pro")
            .font(.system(size: 32, weight: .bold,
                          design: .default))
        
        Text("Get advanced tools for your private repositories with GitHub Pro.")
            .opacity(0.7)
            .font(.system(size: 22, weight: .bold, design: .default))
            .padding(.top, 6)
        
    }
}

struct CircleView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 80, height:80)
                .foregroundColor(Color.purple)

            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height:50)
                .foregroundColor(.white)
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

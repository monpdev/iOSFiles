//
//  ContentView.swift
//  SwiftUIAPICalls
//
//  Created by Mon P. on 03/10/2022.
//
// API Calls based on iOS Academy YT Channel
//
// https://iosacademy.io/api/v1/courses/index.php

import SwiftUI

struct URLImage: View {
    let urlString: String
    
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data:data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height:70)
                .background(Color.gray)
        }
        else {
            Image(systemName: "video")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height:70)
                .background(Color.gray)
                .onAppear {
                    fetchData()
                    
            }
        }
    }
    
    private func fetchData() {
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) {data,
        _,_ in
            self.data = data
        }
        task.resume()
    }
}


struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(viewModel.courses, id: \.self) {course in
                    HStack{
                        URLImage(urlString: course.image, data: nil)
                            .frame(width: 130, height:70)
                            .background(Color.gray)
                        
                        Text(course.name)
                            .bold()
                    }
                    .padding(3)
                }
                
            }
            .navigationTitle("Courses")
            .onAppear {
                viewModel.fetch()
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

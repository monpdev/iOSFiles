//
//  ViewModel.swift
//  URLShortener
//
//  Created by Mon P. on 06/10/2022.
//

import Foundation

struct Model: Hashable {
    let long: String
    let short: String
}


class ViewModel: ObservableObject {
    
    @Published var models = [Model]()
    
    func submit(urlString: String) {
        guard URL(string: urlString) != nil else {
            return
        }
        
        //API Call
        guard let apiUrl = URL(string: "https://api.1pt.co/addURL?long=" + urlString.lowercased()) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: apiUrl) {[weak self]data, _, error in
            guard let data = data, error == nil else {
                return
            }
            //Convert data to JSON
            
            do {
                let result = try JSONDecoder().decode(APIResponse.self, from: data)
                print("RESULT: \(result)")
                let long = result.long
                let short = result.short
                DispatchQueue.main.async {
                    self?.models.append(.init(long: long, short:short))
                }
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}


// https://api.1pt.co/addURL?long=https://apple.com

struct APIResponse: Codable {
    let status: Int
    let message: String
    let short: String
    let long: String
    
}




/*
 {
    "status" : 201,
    "message" : "Added!",
    "short": "bmukb",
    "long": https://apple.com
 
 */

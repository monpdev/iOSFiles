//  WeatherManager.swift
//  Clima
//
//  Created by Mon P. on 20/05/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=0e4fb404021f94dd899acf115bc8c438&units=metric"
    
    func fetchWeather(cityName:String){
        let urlString = "\(weatherURL)&q=\(cityName)"
    func performRequest(urlString: String){
        //Step 1: Create a URL
        if let url = URL(string: urlString) {
            
        //Step 2: Create a URL Session
            let session = URLSession(configuration: .default)
            
        //Step 3: Give URL Session a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
        
            //Step 4: Start a task
            task.resume()
        
        performRequest(urlString: urlString)
    }
    
        }
    }
    func handle(data: Data?, response: URLResponse?, error:Error?)-> Void {
        if error != nil{
            print(error!)
            return
        }
        if let safeData = data {
            let dataString = String(data:safeData, encoding: .utf8)
            print(dataString)
        }
    }
    
}

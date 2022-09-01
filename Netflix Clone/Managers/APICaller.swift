//
//  APICaller.swift
//  Netflix Clone
//
//  Created by kittawat phuangsombat on 2022/9/1.
//

import Foundation

struct Constants{
    static let API_KEY = "9fffd9d7141016b347c2450508406f8c"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedTogetData
}

class APICaller{
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>)  -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let  results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
                
            }catch{
                completion(.failure(error))
            }
      
        }
        
        task.resume()
    }
}

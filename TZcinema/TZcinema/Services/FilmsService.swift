//
//  FilmsGetApiTMDB.swift
//  TZcinema
//
//  Created by Степан Харитонов on 08.01.2022.
//

import Foundation

final class FilmsService {
    
    func getFilms(filmsId: String, completion: @escaping(FilmsContainerTmdb)->()) {
        
                let configuration = URLSessionConfiguration.default
                let session =  URLSession(configuration: configuration)
                
                var urlConstructor = URLComponents()
                urlConstructor.scheme = "https"
                urlConstructor.host = "api.themoviedb.org"
                urlConstructor.path = "/3/movie/\(filmsId)"
                urlConstructor.queryItems = [
                    URLQueryItem(name: "api_key", value: "2c6658356423448450c2cd340bea9b5c"),
                    URLQueryItem(name: "language", value: "ru-RU"),
                ]
        
        let queue = DispatchQueue.global(qos: .default)

        queue.async {
            let task = session.dataTask(with: urlConstructor.url!) { (data, response, error) in
                
                guard let jsonData = data else { return }
                
                DispatchQueue.main.async {
                    do {

                        let filmsContainerTmdb = try JSONDecoder().decode(FilmsContainerTmdb.self, from: jsonData)

                        let films = filmsContainerTmdb

                        completion(films)
                    } catch  {
                        print(error)
                    }
                }
            }
            task.resume()
        }
    }
}

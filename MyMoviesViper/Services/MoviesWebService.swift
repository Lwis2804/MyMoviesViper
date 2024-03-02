//
//  PopularMoviesWebService.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 21/02/24.
//

import Foundation

protocol NetworkApiProtocol: AnyObject {
    var urlConfiguration : MostPopMovUrlConfig { get set } // preguntar por el get set

}

class MoviesWebService : NetworkApiProtocol {
    var urlConfiguration : MostPopMovUrlConfig
    
    
    init(urlConfiguration : MostPopMovUrlConfig) {  // duda aqui en el INIT
        self.urlConfiguration = urlConfiguration
    }
    
    public func consumeService<T>(withComplitionHandler handler : @escaping(Result <T,ErrorWebService>) -> Void) where T : Decodable {
        guard let url = urlConfiguration.configureUrl() else {
            handler(.failure(.wrongUrl))
        return } // no entiendo muy bien este return
        URLSession.shared.dataTask(with: .init(url: url)) { data, response, _ in // du? aq en init en que es data y response
            guard let data = data, let response = response as?
                    HTTPURLResponse,(200...299).contains(response.statusCode) else {
                handler(.failure(.wrongJson))
                return // tampcoo me queda claro este return
            }
            if let json = try? JSONDecoder().decode(T.self, from: data) { // no entiendo muy bien este data
                handler(.success(json)) // porque el json es de tipo Decodable
            } else {
                handler(.failure(.wrongResponse))
            }
        }.resume()
    }
}

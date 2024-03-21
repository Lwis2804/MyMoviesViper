//
//  PopularMoviesWebService.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 21/02/24.
//

import Foundation

protocol NetworkApiProtocol: AnyObject {
    var urlConfiguration : MoviesUrlConfig { get set } // preguntar por el get set
    func consumeService<T : Decodable>(withCompilationHandler handler : @escaping (Result <T, ErrorWebService>) -> Void)
}

class MoviesWebService : NetworkApiProtocol {
    var urlConfiguration : MoviesUrlConfig
    
    
    init(urlConfiguration : MoviesUrlConfig) {  // duda aqui en el INIT
        self.urlConfiguration = urlConfiguration
    }
    
    public func consumeService<T>(withCompilationHandler handler : @escaping(Result <T,ErrorWebService>) -> Void) where T : Decodable {
        guard let url = urlConfiguration.configureUrl() else {
            handler(.failure(.wrongUrl))
        return } // el return indica termino de funcion y puede o no regresar un valor
        var strUrl = "\(url)"
        strUrl = strUrl.replacingOccurrences(of: "%3F", with: "?")
        URLSession.shared.dataTask(with: .init(url: URL(string: strUrl) ?? URL(fileURLWithPath: ""))) { data, response, _ in // data es dato duro y decode explica
            guard let data = data, let response = response as?
                    HTTPURLResponse,(200...299).contains(response.statusCode) else {
                handler(.failure(.wrongJson))
                return
            }
            if let json = try? JSONDecoder().decode(T.self, from: data) { // no entiendo muy bien este data
                handler(.success(json)) // porque el json es de tipo Decodable
            } else {
                handler(.failure(.wrongResponse))
            }
        }.resume()
    }
}

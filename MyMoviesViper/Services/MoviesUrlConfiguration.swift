//
//  PopularMoviesUrlConfiguration.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 21/02/24.
//

import Foundation

struct MostPopMovUrlConfig {
    var metodo : String
    var host : String
    var path : PathsProtocol
    
    public init(metodo: String, host: String, path: PathsProtocol) {
        self.metodo = metodo
        self.host = host
        self.path = path
    }
    
    func configureUrl() -> URL? {
        guard !host.isEmpty else { return nil }
        var componentes : URLComponents = URLComponents()
        componentes.scheme = metodo  // tengo duda de que estyo haciendo aqui
        componentes.host = host
        componentes.path = path.pathToUse // DUDA AQUI JEJE
        return componentes.url  // duda en .url 
    }
    
    
}

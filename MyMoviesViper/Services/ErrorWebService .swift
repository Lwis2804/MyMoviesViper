//
//  ErrorWebService .swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 21/02/24.
//

import Foundation

enum ErrorWebService : Error {
    case wrongUrl
    case wrongJson
    case wrongResponse
    
    func getMessage() -> String{
        switch self {
        case .wrongUrl:
            return "La Url esta mal"
        case .wrongJson:
            return "Fallo el Json"
        case .wrongResponse:
            return "No hay repsuesta de servicio"
        }
    }
}

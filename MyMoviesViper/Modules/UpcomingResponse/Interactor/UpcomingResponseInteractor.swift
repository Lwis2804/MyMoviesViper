//  UpcomingResponseInteractor.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 20/03/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class UpcomingResponseInteractor: UpcomingResponse_PresenterToInteractorProtocol {
    weak var presenter: UpcomingResponse_InteractorToPresenterProtocol?
    private var metodo : String = "https"
    private var host : String = "api.themoviedb.org"
    
    func getUpcomingResponseToInteractor() {
        let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MoviesUrlConfig(metodo: metodo, host: host, path: MoviesPath.getMostPopularMovies.getPath()))
        service.consumeService { [weak self] (result:Result<UpcomingResults,ErrorWebService>) in // no comprendo el consume servi
            switch result {
            case .success(let succes):
                self?.presenter?.getUpcomingResponseFromInteractor(withResponse: succes)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}


//  NowPlayingMoviesInteractor.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 22/03/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class NowPlayingMoviesInteractor: NowPlayingMovies_PresenterToInteractorProtocol {
    
    weak var presenter: NowPlayingMovies_InteractorToPresenterProtocol?
    private var metodo : String = "https"
    private var host : String = "api.themoviedb.org"
    
    func getNowPlayingMoviesToINteractor() {
        let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MoviesUrlConfig(metodo: metodo, host: host, path: MoviesPath.getNowPlayingMovies.getPath()))
        service.consumeService { [weak self] (result : Result<NowPlayingResponse, ErrorWebService>) in
            switch result {
            case .success(let succes):
              print(result)
                self?.presenter?.getNowPlayingMoviesFromInteractor(withResponse: succes)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

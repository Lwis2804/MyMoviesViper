//  MostPopularMoviesInteractor.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 21/02/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit



// MARK: - P R E S E N T E R · T O · V I E W
class MostPopularMoviesInteractor: MostPopularMovies_PresenterToInteractorProtocol {
    
    weak var presenter: MostPopularMovies_InteractorToPresenterProtocol?
    private var metodo : String = "https"
    private var host : String = "api.themoviedb.org"
    
    
    func getMostPopularMoviesToInteractor() {
        print("\n\n\n\n on interactor   ---->\n\n\n\n")
        let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MostPopMovUrlConfig(metodo: metodo, host: host, path: allMoviesPath.getMostPopularMovies.getPath()))
        print(service.urlConfiguration.path)
        service.consumeService { [weak self] (result:Result<MostPopularResponse, ErrorWebService>) in
            switch result {
            case .success(let succes):
                print("\n\n\n\n ready to go to presenter  ----> \n\n\n\n")
                self?.presenter?.getMostPopularMoviesFromInteractor(withResponse: succes)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}


//  MostPopularMoviesPresenter.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 21/02/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MostPopularMoviesPresenter: MostPopularMovies_ViewToPresenterProtocol {
    weak var view: MostPopularMovies_PresenterToViewProtocol?
    var interactor: MostPopularMovies_PresenterToInteractorProtocol?
    var router: MostPopularMovies_PresenterToRouterProtocol?
    
    
    func getToMostPopularMovies() {
        print("\n\n\n\n get on presenter to interactor  ----> \n\n\n\n")
        interactor?.getMostPopularMoviesToInteractor()
    }
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension MostPopularMoviesPresenter: MostPopularMovies_InteractorToPresenterProtocol {
    func getMostPopularMoviesFromInteractor(withResponse reponse: MostPopularResponse) {
        print("\n\n\n\n interactor go to view  ----> \n\n\n\n")
        view?.updateViewWithMostPopularMovies(withResponse: reponse)
    }
}

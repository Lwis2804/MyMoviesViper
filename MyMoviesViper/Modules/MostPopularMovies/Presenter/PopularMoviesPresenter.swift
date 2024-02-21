//  PopularMoviesPresenter.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 21/02/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class PopularMoviesPresenter: PopularMovies_ViewToPresenterProtocol {
    
    weak var view: PopularMovies_PresenterToViewProtocol?
    var interactor: PopularMovies_PresenterToInteractorProtocol?
    var router: PopularMovies_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension PopularMoviesPresenter: PopularMovies_InteractorToPresenterProtocol {

}

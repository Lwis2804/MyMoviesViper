//  NowPlayingMoviesPresenter.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 22/03/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class NowPlayingMoviesPresenter: NowPlayingMovies_ViewToPresenterProtocol {
    
    weak var view: NowPlayingMovies_PresenterToViewProtocol?
    var interactor: NowPlayingMovies_PresenterToInteractorProtocol?
    var router: NowPlayingMovies_PresenterToRouterProtocol?
    
    func getToNowPlayingMovies() {
        interactor?.getNowPlayingMoviesToINteractor()
    }
    
    
   
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension NowPlayingMoviesPresenter: NowPlayingMovies_InteractorToPresenterProtocol {
    func getNowPlayingMoviesFromInteractor(withResponse response: NowPlayingResponse) {
        view?.updateNowPlayingMovies(withResponse: response)
    }
    

}

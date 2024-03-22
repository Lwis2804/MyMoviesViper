//  NowPlayingMoviesRouter.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 22/03/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class NowPlayingMoviesRouter {
	
    static func createModule() -> UIViewController {
        
        let view = NowPlayingMoviesViewController()
        let presenter = NowPlayingMoviesPresenter()
        let interactor = NowPlayingMoviesInteractor()
        let router = NowPlayingMoviesRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension NowPlayingMoviesRouter: NowPlayingMovies_PresenterToRouterProtocol {
    
}

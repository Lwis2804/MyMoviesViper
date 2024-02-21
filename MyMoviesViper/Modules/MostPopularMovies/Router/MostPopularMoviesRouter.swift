//  PopularMoviesRouter.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 21/02/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class PopularMoviesRouter {
	
    static func createModule() -> UIViewController {
        
        let view = PopularMoviesViewController()
        let presenter = PopularMoviesPresenter()
        let interactor = PopularMoviesInteractor()
        let router = PopularMoviesRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension PopularMoviesRouter: PopularMovies_PresenterToRouterProtocol {
    
}

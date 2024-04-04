//  DetailViewRouter.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 27/03/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class DetailViewRouter {
	
    static func createModule() -> UIViewController {
        
        let view = DetailViewViewController()
        let presenter = DetailViewPresenter()
        let interactor = DetailViewInteractor()
        let router = DetailViewRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension DetailViewRouter: DetailView_PresenterToRouterProtocol {
}

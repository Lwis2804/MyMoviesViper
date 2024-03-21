//  UpcomingResponseRouter.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 20/03/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class UpcomingResponseRouter {
	
    static func createModule() -> UIViewController {
        
        let view = UpcomingResponseViewController()
        let presenter = UpcomingResponsePresenter()
        let interactor = UpcomingResponseInteractor()
        let router = UpcomingResponseRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension UpcomingResponseRouter: UpcomingResponse_PresenterToRouterProtocol {
    
}

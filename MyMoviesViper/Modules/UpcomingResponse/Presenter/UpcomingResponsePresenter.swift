//  UpcomingResponsePresenter.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 20/03/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class UpcomingResponsePresenter: UpcomingResponse_ViewToPresenterProtocol {
    weak var view: UpcomingResponse_PresenterToViewProtocol?
    var interactor: UpcomingResponse_PresenterToInteractorProtocol?
    var router: UpcomingResponse_PresenterToRouterProtocol?
    
    
    func getToUpcomingResponse() {
        interactor?.getUpcomingResponseToInteractor()
    }
    
 
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension UpcomingResponsePresenter: UpcomingResponse_InteractorToPresenterProtocol {
    func getUpcomingResponseFromInteractor(withResponse response: UpcomingResponse) {
        view?.updateViewWithUpcomingResponse(withResponse: response)
    }
}

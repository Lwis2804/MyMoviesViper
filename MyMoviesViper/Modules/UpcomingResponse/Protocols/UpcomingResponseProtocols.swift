//  UpcomingResponseProtocols.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 20/03/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Si queremos ir a otro modulo VIPER
 
    * goTo___________( )
    * goTo___________( _ : )
 
 Si queremos ir por datos o hacer un consumo
    * viewDidLoad()
    * getTo___________( )
    * getTo___________( _ : )
 */

// MARK: VIEW -> PRESENTER
protocol UpcomingResponse_ViewToPresenterProtocol: AnyObject {
	var view: UpcomingResponse_PresenterToViewProtocol? { get set }
	var interactor: UpcomingResponse_PresenterToInteractorProtocol? { get set }
	var router: UpcomingResponse_PresenterToRouterProtocol? { get set }
    func getToUpcomingResponse()
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

/**
 Sugerencias en el llamado de Funciones de  Presenter a Interactor
 :condiciones:
 
 Tratemos que la funcion se llame igual que desde la que viene en la vista al Presenter,
 pero en esta ocacion agregemosle el subfijo: 'ToInteractor', para saber que vamos
 del presenter al iintectartor
 
    * get___________ToInteractor( )
    * getTo___________ToInteractor( )
 
    * get___________ToInteractor( _ : )
    * getTo___________ToInteractor( _ : )
 
 */

// MARK: PRESENTER -> INTERACTOR
protocol UpcomingResponse_PresenterToInteractorProtocol: AnyObject {
    var presenter: UpcomingResponse_InteractorToPresenterProtocol? { get set }
    func getUpcomingResponseToInteractor()
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Tratemos que la funcion se llame igual que desde la que viene en la vista al Presenter,
 pero en esta ocacion agregemosle el subfijo: 'FromInteractor' con los parametros que correspondan,
 para saber que vamos del Interactor  al Presenter
 
    * get___________FromInteractor( )
    * getTo___________FromInteractor( )
 
    * get___________FromInteractor(_ :)
    * getTo___________FromInteractor(_ :)
 */

// MARK: INTERACTOR -> PRESENTER
protocol UpcomingResponse_InteractorToPresenterProtocol: AnyObject {
    func getUpcomingResponseFromInteractor(withResponse response : UpcomingResponse)
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Tratemos de usar la funcion updateView(_ :), con los parametros que correspondan, para
 saber que vamos del Presenter a la Vista.
 
    * updateView(_: )
 
 */

// MARK: PRESENTER -> VIEW
protocol UpcomingResponse_PresenterToViewProtocol: AnyObject {
    var presenter: UpcomingResponse_ViewToPresenterProtocol? { get set }
    func updateViewWithUpcomingResponse(withResponse response : UpcomingResponse)
}

//MARK: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
/**
 Sugerencias en el llamado de Funciones de Vista a Presenter
 :condiciones:
 
 Si queremos ir a otro modulo VIPER, usemos goTo_________( _ : ), con parametros si es necesario para
 asegurar que vamos del Presenter a el Router de otro Modulo VIPER.
 
    * goTo___________( _ : )
 */

// MARK: PRESENTER -> ROUTER
protocol UpcomingResponse_PresenterToRouterProtocol: AnyObject {
}

//////////////////////////////////////// DUDA CON EL PATHS PROTOCOL ///////////////////

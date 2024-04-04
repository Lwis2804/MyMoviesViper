//  DetailViewViewController.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 27/03/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class DetailViewViewController: UIViewController {

    var presenter: DetailView_ViewToPresenterProtocol?
    var detailMovies : [SearchResponse] = []

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension DetailViewViewController: DetailView_PresenterToViewProtocol {
    func updateDetailView(withResponse response: SearchResponse) {
    //    self.detailMovies = response.results ?? []
    }
    
}

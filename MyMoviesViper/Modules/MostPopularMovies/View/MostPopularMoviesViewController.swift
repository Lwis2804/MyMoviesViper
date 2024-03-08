//  MostPopularMoviesViewController.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 21/02/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MostPopularMoviesViewController: UIViewController {

    @IBOutlet var mostPopularTable: UITableView!
    
    var mostPopularmovies : [MostPopularResults] = []
    var presenter: MostPopularMovies_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setUpTable() {
        self.mostPopularTable.delegate = self
        self.mostPopularTable.dataSource = self
        self.mostPopularTable.register(MostPopularTableViewCell.nib, forCellReuseIdentifier: MostPopularTableViewCell.identifier)
    }
    
    
    
}

// MARK: - P R E S E N T E R · T O · V I E W
extension MostPopularMoviesViewController: MostPopularMovies_PresenterToViewProtocol {
}

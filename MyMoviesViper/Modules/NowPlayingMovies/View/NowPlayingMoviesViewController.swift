//  NowPlayingMoviesViewController.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 22/03/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class NowPlayingMoviesViewController: UIViewController {

    @IBOutlet var nowPlayingMoviesTable: UITableView!
    var presenter: NowPlayingMovies_ViewToPresenterProtocol?
    var getNowPlayingMovies : [NowPlayingResult] = []

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.getToNowPlayingMovies()
        setUpNowPlayingTable()
    }
    
    func setUpNowPlayingTable() {
        self.nowPlayingMoviesTable.dataSource = self
        self.nowPlayingMoviesTable.delegate = self
        self.nowPlayingMoviesTable.register(NowPlayingMoviesTableViewCell.nib, forCellReuseIdentifier: NowPlayingMoviesTableViewCell.identifier)
    }
    
   
}

// MARK: - P R E S E N T E R · T O · V I E W
extension NowPlayingMoviesViewController: NowPlayingMovies_PresenterToViewProtocol {
    func updateNowPlayingMovies(withResponse response: NowPlayingResponse) {
        self.getNowPlayingMovies = response.results ?? []
        DispatchQueue.main.async {
            self.nowPlayingMoviesTable.reloadData()
        }
    }
}

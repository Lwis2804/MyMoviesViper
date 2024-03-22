//  UpcomingResponseViewController.swift
//  MyMoviesViper
//  Created by LUIS GONZALEZ on 20/03/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class UpcomingResponseViewController: UIViewController {
    
    
    @IBOutlet var upcomingResponseTable: UITableView!
    
    
    var presenter: UpcomingResponse_ViewToPresenterProtocol?
    var upcomingMoviesResponse : [UpcomingResults] = []
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUpcomingTable()
        presenter?.getToUpcomingResponse()
    }
    
    func setUpUpcomingTable() {
        self.upcomingResponseTable.delegate = self
        self.upcomingResponseTable.dataSource = self
        self.upcomingResponseTable.register(UpcomingCellTableViewCell.nib, forCellReuseIdentifier: UpcomingCellTableViewCell.identifier)
    }
    
}

// MARK: - P R E S E N T E R · T O · V I E W
extension UpcomingResponseViewController: UpcomingResponse_PresenterToViewProtocol {
    func updateViewWithUpcomingResponse(withResponse response: UpcomingResponse) {
        self.upcomingMoviesResponse = response.results ?? []
        print(response)
        DispatchQueue.main.async {
            self.upcomingResponseTable.reloadData()
        }
    }
}



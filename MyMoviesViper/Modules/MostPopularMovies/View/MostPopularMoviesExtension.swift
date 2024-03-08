//
//  MostPopularMoviesExtension.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 08/03/24.
//

import UIKit

extension MostPopularMoviesViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mostPopularmovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MostPopularTableViewCell.identifier,
                                                      for: indexPath) as? MostPopularTableViewCell else { return MostPopularTableViewCell()}
        cell.configurateCell(withEntry: mostPopularmovies[indexPath.row])
        return cell
    }
    
    
}

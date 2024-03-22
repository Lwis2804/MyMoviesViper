//
//  ExtensionNowPlayingMovies.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 22/03/24.
//

import UIKit

extension NowPlayingMoviesViewController : UITableViewDataSource & UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.getNowPlayingMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NowPlayingMoviesTableViewCell.identifier, for: indexPath) as?  NowPlayingMoviesTableViewCell else { return NowPlayingMoviesTableViewCell()}
        cell.configureCell(withEntry: getNowPlayingMovies[indexPath.row])
        return cell
    }
    
    
}

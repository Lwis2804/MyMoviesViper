//
//  ExtensionUpcomingResponse.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 20/03/24.
//

import UIKit

extension UpcomingResponseViewController: UITableViewDataSource & UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomingMoviesResponse.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UpcomingCellTableViewCell.identifier,
                                                       for: indexPath) as? UpcomingCellTableViewCell else { return UpcomingCellTableViewCell()}
        cell.configurateCell(withEntry: upcomingMoviesResponse[indexPath.row])
        return cell
    }
    
    
    
}

//
//  MostPopularTableViewCell.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 01/03/24.
//

import UIKit

class MostPopularTableViewCell: UITableViewCell {

    @IBOutlet var mostPopularMovieName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configurateCell( withEntry entry : MostPopularResults? ) {
        guard let entrada = entry else { return }
        self.mostPopularMovieName.text = "\(entrada.title ?? "")"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

//
//  NowPlayingMoviesTableViewCell.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 22/03/24.
//

import UIKit

class NowPlayingMoviesTableViewCell: UITableViewCell {

    @IBOutlet var lblNowPlayingMoviesTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(withEntry entry : NowPlayingResult?) {
        guard let entrada = entry else { return }
        self.lblNowPlayingMoviesTitle.text = "\(entrada.title ?? "")"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

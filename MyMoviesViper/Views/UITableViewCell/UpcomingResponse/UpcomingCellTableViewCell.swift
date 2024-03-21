//
//  UpcomingCellTableViewCell.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 20/03/24.
//

import UIKit

class UpcomingCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet var lblUpcomingTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func configurateCell(withEntry entry : UpcomingResults?) {
        guard let entrada = entry else { return }
        self.lblUpcomingTitle.text = "\(entrada.title ?? "")"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

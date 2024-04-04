//
//  MostPopularTableViewCell.swift
//  MyMoviesViper
//
//  Created by LUIS GONZALEZ on 01/03/24.
//

import UIKit

class MostPopularTableViewCell: UITableViewCell {

    @IBOutlet var mostPopularMovieName: UILabel!
    @IBOutlet var mostPopularimage: UIImageView!{
        didSet{self.mostPopularimage.layer.cornerRadius = 5
            self.mostPopularimage.layer.masksToBounds = true
        }
    }
    var downloadTask : URLSessionDownloadTask?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func configurateCell( withEntry entry : MostPopularResults? ) {
        guard let entrada = entry else { return }
        self.mostPopularMovieName.text = "\(entrada.title ?? "")"
        
        if let urlPoster = entry?.poster_path,
           let url = URL(string: "https://image.tmdb.org/t/p/w500\(urlPoster)"){
            downloadTask = mostPopularimage.loadImage(url: url)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

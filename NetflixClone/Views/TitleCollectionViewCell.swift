//
//  TitleCollectionViewCell.swift
//  NetflixClone
//
//  Created by Azharuddin 1 on 02/09/23.
//

import UIKit

class TitleCollectionViewCell: UICollectionViewCell {
    static let identifier = "TitleCollectionViewCell"
    
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    
    public func configure(with model: String) {
        
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model)") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
            let image = UIImage(data: data!)
            DispatchQueue.main.async {
                self?.posterImageView.image = image
            }
        }.resume()
        
       
    }
}

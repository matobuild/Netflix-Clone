//
//  TitleCollectionViewCell.swift
//  Netflix Clone
//
//  Created by kittawat phuangsombat on 2022/9/1.
//

import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TitleCollectionViewCell"
    
    private let posterImageview: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageview)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageview.frame = contentView.bounds
    }
    
    
    public func configure(with model: String) {
    
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model)") else {
            return
        }
        
        posterImageview.sd_setImage(with: url, completed: nil)
        
    }
    
    
}

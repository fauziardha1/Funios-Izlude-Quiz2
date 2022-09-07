//
//  TextItemCell.swift
//  Funios-Izlude-Quiz2
//
//  Created by FauziArda on 08/09/22.
//

import Foundation
import UIKit

class SimpleItemCell : UICollectionViewCell {
    static let identifier = "TextItemCell"
    
    private let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let images = [
            UIImage(named: "oscar"),
            UIImage(systemName: "headphones"),
            UIImage(systemName: "book.closed.fill"),
            UIImage(systemName: "fanblades.fill"),
            UIImage(systemName: "cup.and.saucer.fill"),
            UIImage(systemName: "bed.double.fill"),
            UIImage(named: "oscar"),
        ].compactMap({$0})
        
        imageView.image = images.randomElement()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        imageView.image = nil
    }
}

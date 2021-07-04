//
//  CategoryCollectionViewCell.swift
//  TAHABOO
//
//  Created by abbas m h on 27/06/21.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cImage: UIImageView!
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var cBackgroundView: UIView!
    
    
    func updateUi() {
        cBackgroundView.layer.cornerRadius = 15
        cBackgroundView.clipsToBounds = true
    }
    
    func setUp(with category: Category) {
        cImage.image = category.image
        cLabel.text = category.title
        cBackgroundView.backgroundColor = category.colour
    }
    
}

//
//  ItemCollectionViewCell.swift
//  TAHABOO
//
//  Created by abbas m h on 27/06/21.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var iImage: UIImageView!
    @IBOutlet weak var iNameLabel: UILabel!
    @IBOutlet weak var iOfferpriceLabel: UILabel!
    @IBOutlet weak var iPriceLabrl: UILabel!
    @IBOutlet weak var ratingButton: UIButton!
    @IBOutlet weak var backView: UIView!
    
    
    func updateUi() {
        iImage.layer.cornerRadius = 12
        backgroundView?.layer.cornerRadius = 10
    }
    
    func setUp(with item: Item) {
        iImage.image = item.image
        iNameLabel.text = item.title
        iOfferpriceLabel.text = item.offPrice
        iPriceLabrl.text = item.price
        ratingButton.setTitle(item.Rating, for: .normal)
    }
}

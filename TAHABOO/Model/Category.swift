//
//  Category.swift
//  TAHABOO
//
//  Created by abbas m h on 27/06/21.
//

import UIKit

struct Category {
    
    let title: String
    let image: UIImage
    let colour : UIColor
}
let categories : [Category] = [
    Category(title: "Electronics", image: #imageLiteral(resourceName: "Electronics"), colour: .init(red: 218/255, green: 245/255, blue: 252/255, alpha: 1)),
    Category(title: "Toys", image: #imageLiteral(resourceName: "Toys"), colour: #colorLiteral(red: 0.9916234612, green: 0.971947968, blue: 0.924583137, alpha: 1) ),
    Category(title: "Bags", image: #imageLiteral(resourceName: "Bags"),colour: .init(red: 237/255, green: 252/255, blue: 232/255, alpha: 1)),
    Category(title: "Shoes", image: #imageLiteral(resourceName: "Shoes"), colour: #colorLiteral(red: 0.9753554463, green: 0.8381600976, blue: 0.8450083733, alpha: 1))
]


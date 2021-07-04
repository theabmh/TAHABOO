//
//  Item.swift
//  TAHABOO
//
//  Created by abbas m h on 27/06/21.
//

import UIKit


struct Item {
    
    let title: String
    let image: UIImage
    let price : String
    let offPrice : String
    let Rating : String
    
}
let items : [Item] = [
    Item(title: "Makeup Kit", image: #imageLiteral(resourceName: "MakeupKit"), price: "Rs 1399", offPrice: "RS 999", Rating: "4.0"),
    Item(title: "Cms Headphone", image: #imageLiteral(resourceName: "Electronics"), price: "Rs 2999", offPrice: "Rs 1999", Rating: "4.0"),
    Item(title: "Antique Binacular", image: #imageLiteral(resourceName: "Bags"), price: "RS 7999", offPrice: "Rs 4999", Rating: "4.2"),
    Item(title: "Grill", image: #imageLiteral(resourceName: "gift2"), price: "Rs 4999", offPrice: "Rs 3999", Rating: "3"),
    Item(title: "Makeup Kit", image: #imageLiteral(resourceName: "MakeupKit"), price: "Rs 1399", offPrice: "RS 999", Rating: "4.0"),
    Item(title: "Cms Headphone", image: #imageLiteral(resourceName: "Electronics"), price: "Rs 2999", offPrice: "Rs 1999", Rating: "4.0"),
    Item(title: "Antique Binacular", image: #imageLiteral(resourceName: "Bags"), price: "RS 7999", offPrice: "Rs 4999", Rating: "4.2"),
    Item(title: "Grill", image: #imageLiteral(resourceName: "gift2"), price: "Rs 4999", offPrice: "Rs 3999", Rating: "3")
]

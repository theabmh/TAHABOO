//
//  ViewController.swift
//  TAHABOO
//
//  Created by abbas m h on 27/06/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var categoryCollection: UICollectionView!
    @IBOutlet weak var itemCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUi()
        
    }
    
    
    func updateUi() {
        
        itemCollection.collectionViewLayout = UICollectionViewFlowLayout()
        itemCollection.layer.cornerRadius = 15
        categoryCollection.layer.cornerRadius = 15
        navigationController?.navigationBar.isHidden = true
        
    }
    
}

extension HomeViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == itemCollection){
            return items.count
        }
        return categories.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (collectionView == itemCollection) {
            
            let iCell = itemCollection.dequeueReusableCell(withReuseIdentifier: "item", for: indexPath) as! ItemCollectionViewCell
            iCell.setUp(with: items[indexPath.item])
            iCell.updateUi()
            return iCell
        }
        
        
        let cCell =
            categoryCollection.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
        cCell.setUp(with: categories[indexPath.item])
        cCell.updateUi()
        return cCell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (collectionView == itemCollection) {
            
            return CGSize(width: 182, height: 250)
        }
        return CGSize(width: 125, height: 125)
    }
}

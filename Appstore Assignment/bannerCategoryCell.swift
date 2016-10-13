//
//  bannerCategoryCell.swift
//  Appstore Assignment
//
//  Created by Hai on 10/12/16.
//  Copyright © 2016 Hai. All rights reserved.
//

import UIKit

class BannerCategoryCell: UITableViewCell {
     let appBanner = ["App-Store-Turns-One-2.png",
                     "appbaner1.png",
                     "appbanner2.png",
                     "banner-room-personality.png",
                     "HeatlhKit-App-Store-section-banner.png",
                     "smash-hit-artwork1.png"
    ]
    
  
}
extension BannerCategoryCell : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appBanner.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerCategoryCollectionCell", for: indexPath)
        let appButoon = cell2.contentView.viewWithTag(50) as! UIButton
        appButoon.layer.cornerRadius = 5
        appButoon.clipsToBounds = true
        appButoon.contentMode = .scaleAspectFill
        appButoon.setImage(UIImage(named : appBanner[indexPath.row]), for: .normal)
                
        
        
        return cell2
        
    }
    
    
}

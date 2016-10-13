//
//  BannerCell.swift
//  Appstore Assignment
//
//  Created by Hai on 10/10/16.
//  Copyright © 2016 Hai. All rights reserved.
//

import UIKit

class BannerCell : UITableViewCell {
    let imageBanner = ["1.png","2.png","3.png","4.png"]


    
}

extension BannerCell : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerCollectionCell", for: indexPath)
        let bannerImage = cell.contentView.viewWithTag(100) as! UIImageView
        bannerImage.image = UIImage(named: imageBanner[indexPath.row])
        return cell
        }
    
}

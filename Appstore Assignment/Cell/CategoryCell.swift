//
//  CategoryCell.swift
//  Appstore Assignment
//
//  Created by Hai on 10/10/16.
//  Copyright © 2016 Hai. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    var cellRow = 0
    var category:CategoryApp? = nil
    
    
//    let appName = ["Pixel Art", "Retro iOS Gen 5 Techkids", "Sago Mini", "MetaPho", "Disney", "Logo"]
//    let appTag = ["Giải Trỉ", "Ảnh & Video", "Giáo Dục", "Sức Khoẻ", "Ẩm Thực","Hiệu Suất"]
//    let appPrice = ["USD 0.99", "USD 1.99", "", "USD 0.99", "","USD 2.99"]
//    let categoryApp = ["c1.png","c2.png","c3.png","c4.png","c5.png", "c6.png"]
      }
extension CategoryCell : UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return category!.categoryApp.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryAppCell", for: indexPath)
        let buttonApp = cell.contentView.viewWithTag(1) as! UIButton
        buttonApp.layer.cornerRadius = 10
        buttonApp.clipsToBounds = true
        buttonApp.layer.borderColor = UIColor.gray.cgColor
        buttonApp.layer.borderWidth = 0.3
        buttonApp.setImage(UIImage(named : (category?.categoryApp[indexPath.row])!), for: .normal)
        let nameApp = cell.contentView.viewWithTag(2) as! UILabel
        nameApp.text = category?.appName[indexPath.row]
        let tagApp = cell.contentView.viewWithTag(4) as! UILabel
        tagApp.text = category?.appTag[indexPath.row]
        let priceApp = cell.contentView.viewWithTag(3) as! UILabel
        priceApp.text = category?.appPrice[indexPath.row]

        return cell
        
    
    
}
}




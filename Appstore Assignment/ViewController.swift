//
//  ViewController.swift
//  Appstore Assignment
//
//  Created by Hai on 10/10/16.
//  Copyright © 2016 Hai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var appstoreTable : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.appstoreTable.delegate = self
        self.appstoreTable.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        if (section == 1) {
            return 7
        }
        if (section == 2){
            return 5
        }
            return 1
        
    }
    
    func bannerCell(tableView: UITableView, indexPath: IndexPath ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bannerCell", for: indexPath) as! BannerCell
        return cell

    }
    func categoryCell(tableView: UITableView, indexPath: IndexPath ) -> UITableViewCell {
        if (indexPath.row == 2 ) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "bannerAppCell", for: indexPath) as! BannerAppCell
            return cell
        }
        if (indexPath.row == 4) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "bannerCategoryCell", for: indexPath) as! BannerCategoryCell
            let nameApp = cell.contentView.viewWithTag(25) as! UILabel
            nameApp.text = "View by Categories"

            return cell

        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! CategoryCell
        let categoryLabel = cell.contentView.viewWithTag(100) as! UILabel
        switch indexPath.row {
        case 0:
            cell.category = AppModel.sharedInstance.categories[0]

            categoryLabel.text = "New Apps We Love"

        case 1:
            cell.category = AppModel.sharedInstance.categories[1]

            categoryLabel.text = "New Games We Love"
        case 3:
            cell.category = AppModel.sharedInstance.categories[2]

            categoryLabel.text = "Say It with Stickers"
        case 5:
            cell.category = AppModel.sharedInstance.categories[3]

            categoryLabel.text = "Entertain Your Kids"
       
        default:
            cell.category = AppModel.sharedInstance.categories[4]

            categoryLabel.text = "Pay Once & Play"

        }
        return cell
        

    }
    func InfoCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
            if (indexPath.row == 0) {
                let cell = tableView.dequeueReusableCell(withIdentifier: "infoHeaderCell", for: indexPath)
                let infoheader = cell.contentView.viewWithTag(44) as! UILabel
                infoheader.text = "Liên kết nhanh"
                return cell
            }
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath)
        let infoLabel = cell.contentView.viewWithTag(90) as! UIButton!
        infoLabel?.setTitleColor(.gray, for: .selected)

        switch indexPath.row {
        case 1:
            infoLabel?.setTitle("Giới thiệu về Cá nhân hoá", for: .normal)
        case 2:
            infoLabel?.setTitle("Hướng dẫn Phụ Huynh", for: .normal)

        case 3:
            infoLabel?.setTitle("Tìm hiểu về Mua In-App", for: .normal)
        default:
            infoLabel?.setTitle("App Collections", for: .normal)

        }
        
            return cell

        }
   

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.section == 0){
            bannerCell(tableView: tableView, indexPath: indexPath)
            
        }
        if (indexPath.section == 1) {
            categoryCell(tableView: tableView, indexPath: indexPath)
                        }
        if (indexPath.section == 2) {
            InfoCell(tableView: tableView, indexPath: indexPath)
                    }
        let cell = tableView.dequeueReusableCell(withIdentifier: "buttonCell", for: indexPath)
        let quaButton = cell.contentView.viewWithTag(80) as! UIButton
        quaButton.setTitle("Đổi quà", for: .normal)
        quaButton.layer.borderColor = UIColor.gray.cgColor
        quaButton.layer.borderWidth = 0.5
        quaButton.layer.cornerRadius = 7
        let idButoon = cell.contentView.viewWithTag(70) as!UIButton
        idButoon.setTitle("thanhhai.hust@gamail.com", for: .normal)
        idButoon.layer.borderColor = UIColor.gray.cgColor
        idButoon.layer.borderWidth = 0.5
        idButoon.layer.cornerRadius = 7
        let termButon = cell.contentView.viewWithTag(60) as! UIButton
        termButon.setTitle("Điều khoản và Điều kiện >", for: .normal)
        termButon.setTitleColor(.gray, for: .normal)
        return cell

       
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.section == 0){
            return 170
        }
        if (indexPath.section == 1){
            if (indexPath.row == 2 ){
                return 100
            }
            if (indexPath.row == 4){
                return 127
            }
            return 180
        }
        if (indexPath.section == 3) {
            return 170
        }
       return 30
    }

}


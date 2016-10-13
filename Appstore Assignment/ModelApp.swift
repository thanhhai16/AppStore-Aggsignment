//
//  ModelApp.swift
//  Appstore Assignment
//
//  Created by Hai on 10/12/16.
//  Copyright © 2016 Hai. All rights reserved.
//

import Foundation

struct AppModel {
    static let sharedInstance = AppModel()
    let categories:[CategoryApp]
    
    init() {
        
        // NewGame
        let newgame = CategoryApp(appName: ["Pixel Art", "Retro iOS Gen 5 Techkids", "Sago Mini", "MetaPho", "Disney", "Logo"], appTag: ["Giải Trỉ", "Ảnh & Video", "Giáo Dục", "Sức Khoẻ", "Ẩm Thực","Hiệu Suất"], appPrice: ["USD 0.99", "USD 1.99", "", "USD 0.99", "","USD 2.99"], categoryApp: ["c1.png","c2.png","c3.png","c4.png","c5.png", "c6.png"])
        
        // NewAPps
        let newApps = CategoryApp(appName: ["App explorer",
                                            "App_Icon",
                                            "app-icon",
                                            "Apps-9gag-icon",
                                            "HS icon",
                                            "Shazam+App+Icon",
                                            "Vimeo-Mobile-App-Icon"],
                                  appTag: ["Hành Động", "Hành Động", "Mô Phỏng", "Con Gái","Âm Nhạc", "Thể Thao", "Chiến Thuật"],
                                  appPrice: ["", "", "USD 0.99", "","USD 2.99", "", "5.99"],
                                  categoryApp: ["App explorer.png",
                                                "App_Icon.png",
                                                "app-icon.png",
                                                "Apps-9gag-icon.png",
                                                "HS icon.png",
                                                "Shazam+App+Icon.png",
                                                "Vimeo-Mobile-App-Icon.png"])
        
        // Stiker
        let Sticker = CategoryApp(appName: ["1_small",
                                            "StikerApp",
                                            "Không biết là gì",
                                            "Amazon",
                                            "Fuck Sticker",
                                            "Lakao-talk",
                                            "Kik",
                                            "Naughty",
                                            "Oil Change",
                                            "Tet Stiker",
                                            "Unnamed.png"],
                                  appTag: ["Stiker",
                                           "Stiker",
                                           "Stiker",
                                           "Stiker",
                                           "Stiker",
                                           "Stiker",
                                           "Stiker",
                                           "Stiker",
                                           "Stiker",
                                           "Stiker",
                                           "Stiker"],
                                  appPrice: ["",
                                             "USD 30.99",
                                             "",
                                             "",
                                             "USD 0.99",
                                             "",
                                             "USD 0.99",
                                             "",
                                             "",
                                             "",
                                             "USD 1.99"],
                                  categoryApp: ["1_small.png",
                                                "7a2d4ba6e3ae08c3f058a2cdee1ea9db.png",
                                                "14527970747_6f60ce05b5_o.png",
                                                "Amazon.png",
                                                "Fuck Sticker.png",
                                                "kakao-talk-logo.png",
                                                "Kik.png",
                                                "naughty.png",
                                                "Oil Change.png",
                                                "Tet Stiker.png",
                                                "unnamed.png"])
        
        // Kids
        let Kids = CategoryApp(appName: ["ABC pencil",
                                         "Bafk",
                                         "Kid ABC",
                                         "No Need to Jump Through",
                                         "PBS Kid",
                                         "Phonics",
                                         "Trillo App Kids",
                                         "Zool Animal"],
                               appTag: ["Kids",
                                        "Kids",
                                        "Game",
                                        "Giáo Dục",
                                        "Kids",
                                        "Hành Động",
                                        "Giải Trí",
                                        "Kids"],
                               appPrice: ["0.99",
                                          "1.99",
                                          "2.99",
                                          "5.99",
                                          "",
                                          "139.99",
                                          "10.99",
                                          ""],
                               categoryApp: ["ABC pencil.png",
                                "Bafk.png",
                                "Kid ABC.png",
                                "No Need to Jump Through.png",
                                "PBS Kid.png",
                                "Phonics.png",
                                "Trillo App Kids.png",
                                "Zool Animal.png"])
        
        // Pay
        let Pay = CategoryApp(appName: ["Battlefield 3",
            "Fifa 13",
            "Injustice Gods Among Us",
            "Modern Combat 3",
            "RoboCop",
            "Temple Run"],
                              appTag: ["Hành Động",
                                       "Thể Thao",
                                       "Đối Kháng",
                                       "Hành Động",
                                       "Mô Phỏng",
                                       "THành Động"],
                              appPrice: ["0.99",
                                         "1.99",
                                         "0.99",
                                         "4.99",
                                         "5.99",
                                         "2.99"],
                              categoryApp: ["Battlefield 3.png",
                                "Fifa 13.png",
                                "Injustice Gods Among Us .png",
                                "Modern Combat 3.png",
                                "RoboCop.png",
                                "Temple Run.png"])
        
        categories = [newgame, newApps, Sticker, Kids, Pay]
        
    }
    
}

struct CategoryApp {
    //    let appName = ["Pixel Art", "Retro iOS Gen 5 Techkids", "Sago Mini", "MetaPho", "Disney", "Logo"]
    //    let appTag = ["Giải Trỉ", "Ảnh & Video", "Giáo Dục", "Sức Khoẻ", "Ẩm Thực","Hiệu Suất"]
    //    let appPrice = ["USD 0.99", "USD 1.99", "", "USD 0.99", "","USD 2.99"]
    //    let categoryApp = ["c1.png","c2.png","c3.png","c4.png","c5.png", "c6.png"]
    let appName : [String]
    let appTag : [String]
    let appPrice : [String]
    let categoryApp : [String]
    
    
    
}

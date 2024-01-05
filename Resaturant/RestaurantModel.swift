//
//  RestaurantModel.swift
//  Resaturant
//
//  Created by Phunsup S. on 29/12/2566 BE.
//

import Foundation
struct RestaurantModel{
    //
    var name: String
    var ImageName: String
    var location: String
    var price: String
    var latitude: Double
    var longtitude: Double
}

extension RestaurantModel{
    static func all() -> [RestaurantModel]{
        return[
            //13.83776663059499, 100.03035058612538
            RestaurantModel(name: "KFC", ImageName: "kfc", location: "KFC สาขา พระปฐมเจดีย์ (Drive - Thru)", price: "$$$", latitude: 13.814354049862951, longtitude: 100.03762009278306),
            RestaurantModel(name: "Mcdonal", ImageName: "Mc", location: "McDonald's สาขา บางจาก นครปฐม ฝั่งขาเข้า (ไดร์ฟทรู)", price: "$$$", latitude: 13.83776663059499, longtitude: 100.03035058612538),
            RestaurantModel(name: "Burker King", ImageName: "bk", location: "Burger King - PTT Lamphaya 3 Inbound", price: "$$$", latitude: 13.798196480666158,longtitude: 99.9618181201274),
            RestaurantModel(name: "Subway", ImageName: "subway", location: "Subway ปตท. ธรรมศาลา", price: "$$$", latitude: 13.822343230559435, longtitude: 100.10451031560856)
            
        ]
    }
}

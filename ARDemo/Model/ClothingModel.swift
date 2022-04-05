//
//  ModelData.swift
//  realMeet1
//
//  Created by y on 2022/3/26.
//

import SwiftUI

struct ClothingModel: Identifiable{
    var id = UUID().uuidString
    var image : String
    var title : String
    var price : String
}

var Clothing = [
    ClothingModel(image: "T", title: "T恤", price: "¥100"),
    ClothingModel(image: "yfm", title: "渔夫帽", price: "¥100")
]

//上面TabBTN
var scroll_Tabs = ["T恤","帽子"]

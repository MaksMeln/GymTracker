//
//  Food.swift
//  GymTracker
//
//  Created by Максим Мельничук on 17.02.23.
//

import UIKit
struct Food : Codable{
    var name : String
    var calories : Double
    var protein_g : Double
    var carbohydrates_total_g : Double
    var serving_size_g : Double
}

struct Foods : Codable {
    var items : [Food]
}

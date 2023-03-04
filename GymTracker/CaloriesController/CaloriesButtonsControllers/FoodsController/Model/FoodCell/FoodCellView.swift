//
//  FoodCellView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 21.02.23.
//

import UIKit

struct FoodCellView {
    private let food : Food

    var calorie : Double {
        return food.calories
    }
    var carbohydrates : Double {
        return food.carbohydrates_total_g
    }
    var protein : Double {
        return food.protein_g
    }
    var name : String {
        return food.name
    }
    var serving_size : Double {
        return food.serving_size_g
    }
    init(food: Food) {
        self.food = food
    }
    
}

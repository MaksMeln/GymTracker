//
//  ResCalories.swift
//  GymTracker
//
//  Created by Максим Мельничук on 17.02.23.
//

import UIKit

enum ResCalories {
    enum Images {
        static let caloriesNeed = UIImage(named: "caloriesNeed")
        static let bodyMassIndex = UIImage(named: "bodyMassIndex")
        static let fatRate = UIImage(named: "fatRate")
        static let foodsCalories = UIImage(named: "foodsCalories")
        static let activityGenderArrow = UIImage(named: "activityGenderArrow")
        static let bodyMassIndexDetail = UIImage(named: "bodyMassIndexDetail")
        static let fatRateDetail = UIImage(named: "fatRateDetail")
    }
    
    enum String {
        
        enum Title {
            static let caloriesNeed = "Calories Need"
            static let bodyMassIndex = "Body Mass Index"
            static let fatRate = "Fat Rate"
            static let foodsCalories = "Foods Calories"
        }
        
        enum Buttons {
            static let caloriesNeed = "Calories Need"
            static let bodyMassIndex = "Body Mass Index"
            static let fatRate = "Fat Rate"
            static let foodsCalories = "Foods Calories"
            static let calculate = "Calculate"
            static let resultButton = "What’s the result ?"
    }
        
        enum Alert {
            static let done = "Done"
            static let title = "Fill the all fields."
            static let message = "There are empty fields."
        }
        
        enum Placecholder {
            
            static let foodsCalories = "Search for Food"
        }
        
        enum Labels {
            static let caloriesCalcuation = "Calories Calcuation"
            static let bodyMassIndexDetail = "Your Body Mass Index Analysis: "
            static let fatRateDetail =  "Your Fat Rate Analysis: "
            
           
            
        enum CaloriesButtonController {
            static let caloriesNeed = "Your Daily Calorie Need:"
            static let bodyMassIndex = "Your Body Mass Index:"
            static let fatRate = "Your Fat Rate"
            static let foodsCalories = "Search for Food Calories:"
            }
        }
        
        enum TextField {
            enum SizeField {
                static let height = "Height (cm)"
                static let weight = "Weight (kg)"
                static let age = "Age"
                static let activityFactory = "Activity Factory"
                static let gender = "Gender"
                static let neck = "Neck (cm)"
                static let waist = "Waist (cm)"
            }
            enum Result {
                static let calories = " Calories"
                static let bodyMassIndex = "Your Body Mass Index:"
                static let fatRate = "Your Fat Rate"
            }
        }
        
        enum FoodCell {
            static let protein = "Protein:"
            static let carbohydrate = "Carbohydrate:"
            static let serving_Size = "Serving Size:"
            static let calories = "Calories"
            static let gramm = " g"
            
            
        }
        
        
        enum Picker {
            static let genders = ["Male", "Famale"]
            static let activities = ["Sedentary", "Lightly Active", "Moderately Active", "Very Active", "Extra Active"]
        }
    }
    
}

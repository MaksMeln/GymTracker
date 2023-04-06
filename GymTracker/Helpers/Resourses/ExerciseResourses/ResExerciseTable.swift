//
//  ResExerciseTable.swift
//  GymTracker
//
//  Created by Максим Мельничук on 7.02.23.
//

import UIKit


enum ResExerciseTable {
    
    enum Search {
        static let searchText = "Search Exercise"
    }
    
    enum ExImage {
        enum Biceps{
            static let biceps_1 = UIImage(named: "bic_1")!
            static let biceps_2 = UIImage(named: "bic_2")!
            static let biceps_3 = UIImage(named: "bic_3")!
            static let biceps_4 = UIImage(named: "bic_4")!
            static let biceps_5 = UIImage(named: "bic_5")!
            static let biceps_6 = UIImage(named: "bic_6")!
            static let biceps_7 = UIImage(named: "bic_7")!
        }
        
        enum Legs {
            static let legs_1 = UIImage(named: "legs_1")!
            static let legs_2 = UIImage(named: "legs_2")!
            static let legs_3 = UIImage(named: "legs_3")!
            static let legs_4 = UIImage(named: "legs_4")!
            static let legs_5 = UIImage(named: "legs_5")!
            static let legs_6 = UIImage(named: "legs_6")!
            static let legs_7 = UIImage(named: "legs_7")!
            static let legs_8 = UIImage(named: "legs_8")!
        }
        
        enum Back {
            static let back_1 = UIImage(named: "back_1")!
            static let back_2 = UIImage(named: "back_2")!
            static let back_3 = UIImage(named: "back_3")!
            static let back_4 = UIImage(named: "back_4")!
            static let back_5 = UIImage(named: "back_5")!
            static let back_6 = UIImage(named: "back_6")!
        }
        enum Shoulders {
            static let shoulders_1 = UIImage(named: "shoulders_1")!
            static let shoulders_2 = UIImage(named: "shoulders_2")!
            static let shoulders_3 = UIImage(named: "shoulders_3")!
            static let shoulders_4 = UIImage(named: "shoulders_4")!
        }
        
        enum Chest {
            static let chest_1 = UIImage(named: "chest_1")!
            static let chest_2 = UIImage(named: "chest_2")!
            static let chest_3 = UIImage(named: "chest_3")!
            static let chest_4 = UIImage(named: "chest_4")!
        }
        enum Triceps {
            static let triceps_1 = UIImage(named: "triceps_1")!
            static let triceps_2 = UIImage(named: "triceps_2")!
            static let triceps_3 = UIImage(named: "triceps_3")!
            static let triceps_4 = UIImage(named: "triceps_4")!
        }
    }
    
    enum ExTitle {
        enum Biceps {
            static let biceps_1 = "Hummer Curl (Dumbbell)"
            static let biceps_2 = "Concentrtion Curl (Dumbbell)"
            static let biceps_3 = "Bicepc Curl (Barbell)"
            static let biceps_4 = "Reverse Curl (Barbell)"
            static let biceps_5 = "Incline Curl (Dumbell)"
            static let biceps_6 = "Bicepc Curl (Cable)"
            static let biceps_7 = "Arm Bicep Curl (Cable)"
        }
        enum Legs {
            static let legs_1 = "Leg press (Machine)"
            static let legs_2 = "Leg extension (Machine)"
            static let legs_3 = "Lying Leg Curl (Machine)"
            static let legs_4 = "Squat (Barbell)"
            static let legs_5 = "Romanian Deadlift (Dumbbell"
            static let legs_6 = "Golbet Squat (Kettlebell)"
            static let legs_7 = "Standing Calf (Dumbbell)"
            static let legs_8 = "Standing Calf (Barbell)"
        }
        
        enum Back {
            static let back_1 = "Bent Over Row (Barbbell)"
            static let back_2 = "Seated Row( Cable)"
            static let back_3 = "Lat Pulldown (Cable)"
            static let back_4 = "Standing Lat Pushdown (Cable)"
            static let back_5 = "Bent Over One Arm Row"
            static let back_6 = "Back Extension"
        }
        
        enum Shoulders {
            static let shoulders_1 = "Shrug (Dumbbell)"
            static let shoulders_2 = "Face Pull (Cable)"
            static let shoulders_3 = "Lateral Raise (Dumbbell)"
            static let shoulders_4 = "Arnold Press (Dumbbell)"
        }
        enum Chest {
            static let chest_1 = "Chest Fly (Hight)"
            static let chest_2 = "Chest Fly(machine)"
            static let chest_3 = "Chest Fly (Band)"
            static let chest_4 = "Bench Press (Burbell)"
        }
        enum Triceps {
            static let triceps_1 = "Triceps Pushdown"
            static let triceps_2 = "Single-Arm (Dumbbell)"
            static let triceps_3 = "Tricepc KickBack"
            static let triceps_4 = "Skull Crushers"
        }
    }
    
    enum ExGrouped {
        static let biceps = "Biceps"
        static let legs = "Legs"
        static let back = "Back"
        static let shoulders = "Shoulders"
        static let chest = "Chest"
        static let triceps = "Triceps"
        static let allExercise = "All"
    }
}

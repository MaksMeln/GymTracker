//
//  ExersiceTableList.swift
//  GymTracker
//
//  Created by Максим Мельничук on 23.01.23.
//

import UIKit

struct ExerciseTableList {
    var exerciseImage : UIImage
    var exerciseTitle : String
    var exerciseGroup : String
}

extension ExerciseController {
    
    func fetchData() -> [[ExerciseTableList]] {
        
//        let bicepc1 = Resourses.AllExersices.Bicepc.bicepc_1
//        let bicepc2 = Resourses.AllExersices.Bicepc.bicepc_2
//        let bicepc3 = Resourses.AllExersices.Bicepc.bicepc_3
//        let bicepc4 = Resourses.AllExersices.Bicepc.bicepc_4
//        let bicepc5 = Resourses.AllExersices.Bicepc.bicepc_5
//        let bicepc6 = Resourses.AllExersices.Bicepc.bicepc_6
//        let bicepc7 = Resourses.AllExersices.Bicepc.bicepc_7
        
        let allBicepc = Resourses.AllExersices.Bicepc.allBicepc
        
//        let legs_1 = Resourses.AllExersices.Legs.legs_1
//        let legs_2 = Resourses.AllExersices.Legs.legs_2
//        let legs_3 = Resourses.AllExersices.Legs.legs_3
//        let legs_4 = Resourses.AllExersices.Legs.legs_4
//        let legs_5 = Resourses.AllExersices.Legs.legs_5
//        let legs_6 = Resourses.AllExersices.Legs.legs_6
//        let legs_7 = Resourses.AllExersices.Legs.legs_7
//        let legs_8 = Resourses.AllExersices.Legs.legs_8
        let allLegs = Resourses.AllExersices.Legs.allLegs
    
//        let back_1 = Resourses.AllExersices.Back.back_1
//        let back_2 = Resourses.AllExersices.Back.back_2
//        let back_3 = Resourses.AllExersices.Back.back_3
//        let back_4 = Resourses.AllExersices.Back.back_4
//        let back_5 = Resourses.AllExersices.Back.back_5
//        let back_6 = Resourses.AllExersices.Back.back_6
        let allBack = Resourses.AllExersices.Back.allBack
        
//        let shoulders_1 = Resourses.AllExersices.Shoulders.shoulders_1
//        let shoulders_2 = Resourses.AllExersices.Shoulders.shoulders_2
//        let shoulders_3 = Resourses.AllExersices.Shoulders.shoulders_3
//        let shoulders_4 = Resourses.AllExersices.Shoulders.shoulders_4
        let allShoulders = Resourses.AllExersices.Shoulders.allShoulders

//        let chest_1 = Resourses.AllExersices.Chest.chest_1
//        let chest_2 = Resourses.AllExersices.Chest.chest_2
//        let chest_3 = Resourses.AllExersices.Chest.chest_3
//        let chest_4 = Resourses.AllExersices.Chest.chest_4
        let allChest = Resourses.AllExersices.Chest.allChest
        
        
//        let tricepc_1 = Resourses.AllExersices.Tricepc.tricepc_1
//        let tricepc_2 = Resourses.AllExersices.Tricepc.tricepc_2
//        let tricepc_3 = Resourses.AllExersices.Tricepc.tricepc_3
//        let tricepc_4 = Resourses.AllExersices.Tricepc.tricepc_4
        let allTricepc = Resourses.AllExersices.Tricepc.allTricepc
        
        return [allBicepc, allLegs, allBack, allShoulders, allChest, allTricepc]
    }
}




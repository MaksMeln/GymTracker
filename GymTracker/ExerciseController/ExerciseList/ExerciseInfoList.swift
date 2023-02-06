//
//  ExerciseInfoList.swift
//  GymTracker
//
//  Created by Максим Мельничук on 27.01.23.
//

import UIKit

struct ExerciseInfoList {

var exerciseImageInfo : UIImage
var exerciseTextInfo : String
var youTubeVideoKey : String
//    var
}

extension ExerciseController {

func fetchInfoData() -> [[ExerciseInfoList]] {
    
//    let bicepc1 = Exercise.ExerciseInfo.AllExerciseInfo.Bicepc.bicepc_1
//    let bicepc2 = Exercise.ExerciseInfo.AllExerciseInfo.Bicepc.bicepc_2
//    let bicepc3 = Exercise.ExerciseInfo.AllExerciseInfo.Bicepc.bicepc_3
//    let bicepc4 = Exercise.ExerciseInfo.AllExerciseInfo.Bicepc.bicepc_4
//    let bicepc5 = Exercise.ExerciseInfo.AllExerciseInfo.Bicepc.bicepc_5
//    let bicepc6 = Exercise.ExerciseInfo.AllExerciseInfo.Bicepc.bicepc_6
//    let bicepc7 = Exercise.ExerciseInfo.AllExerciseInfo.Bicepc.bicepc_7
//
//    let legs_1 = Exercise.ExerciseInfo.AllExerciseInfo.Legs.legs_1
//    let legs_2 = Exercise.ExerciseInfo.AllExerciseInfo.Legs.legs_2
//    let legs_3 = Exercise.ExerciseInfo.AllExerciseInfo.Legs.legs_3
//    let legs_4 = Exercise.ExerciseInfo.AllExerciseInfo.Legs.legs_4
//    let legs_5 = Exercise.ExerciseInfo.AllExerciseInfo.Legs.legs_5
//    let legs_6 = Exercise.ExerciseInfo.AllExerciseInfo.Legs.legs_6
//    let legs_7 = Exercise.ExerciseInfo.AllExerciseInfo.Legs.legs_7
//    let legs_8 = Exercise.ExerciseInfo.AllExerciseInfo.Legs.legs_8
//
//    let back_1 = Exercise.ExerciseInfo.AllExerciseInfo.Back.back_1
//    let back_2 = Exercise.ExerciseInfo.AllExerciseInfo.Back.back_2
//    let back_3 = Exercise.ExerciseInfo.AllExerciseInfo.Back.back_3
//    let back_4 = Exercise.ExerciseInfo.AllExerciseInfo.Back.back_4
//    let back_5 = Exercise.ExerciseInfo.AllExerciseInfo.Back.back_5
//    let back_6 = Exercise.ExerciseInfo.AllExerciseInfo.Back.back_6
//
//    let shoulders_1 = Exercise.ExerciseInfo.AllExerciseInfo.Shoulders.shoulders_1
//    let shoulders_2 = Exercise.ExerciseInfo.AllExerciseInfo.Shoulders.shoulders_2
//    let shoulders_3 = Exercise.ExerciseInfo.AllExerciseInfo.Shoulders.shoulders_3
//    let shoulders_4 = Exercise.ExerciseInfo.AllExerciseInfo.Shoulders.shoulders_4
//
//    let chest_1 = Exercise.ExerciseInfo.AllExerciseInfo.Chest.chest_1
//    let chest_2 = Exercise.ExerciseInfo.AllExerciseInfo.Chest.chest_2
//    let chest_3 = Exercise.ExerciseInfo.AllExerciseInfo.Chest.chest_3
//    let chest_4 = Exercise.ExerciseInfo.AllExerciseInfo.Chest.chest_4
//
//
//    let tricepc_1 = Exercise.ExerciseInfo.AllExerciseInfo.Tricepc.tricepc_1
//    let tricepc_2 = Exercise.ExerciseInfo.AllExerciseInfo.Tricepc.tricepc_2
//    let tricepc_3 = Exercise.ExerciseInfo.AllExerciseInfo.Tricepc.tricepc_3
//    let tricepc_4 = Exercise.ExerciseInfo.AllExerciseInfo.Tricepc.tricepc_4
    
    
    let allBicepc = Exercise.ExerciseInfo.AllExerciseInfo.Bicepc.allBicepc
    let allLegs = Exercise.ExerciseInfo.AllExerciseInfo.Legs.allLegs
    let allBack = Exercise.ExerciseInfo.AllExerciseInfo.Back.allBack
    let allShoulders = Exercise.ExerciseInfo.AllExerciseInfo.Shoulders.allShoulders
    let allChest = Exercise.ExerciseInfo.AllExerciseInfo.Chest.allChest
    let allTricepc = Exercise.ExerciseInfo.AllExerciseInfo.Tricepc.allTricepc

    return [allBicepc, allLegs, allBack, allShoulders, allChest, allTricepc]
}

}

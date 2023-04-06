//
//  ExersiceList.swift
//  GymTracker
//
//  Created by Максим Мельничук on 23.01.23.
//

import UIKit

struct ExerciseList {
        
//MARK: - PROPERTIES
    var exerciseImage : UIImage
    var exerciseTitle : String
    var exerciseGroup : String
    var exerciseImageInfo : UIImage
    var exerciseTextInfo : String
    var youTubeVideoKey : String
}

// MARK: - FUNC FETCHDATA
extension GTBaseViewController {
    
    func fetchData() -> [ExerciseList] {
        
        var exerciseList = [ExerciseList]()
        
        let allBiceps = ResExerciseAll.All.allBiceps
        let allLegs = ResExerciseAll.All.allLegs
        let allBack = ResExerciseAll.All.allBack
        let allShoulders = ResExerciseAll.All.allShoulders
        let allChest = ResExerciseAll.All.allChest
        let allTriceps = ResExerciseAll.All.allTriceps
        
        let allExercises = [allBiceps, allLegs, allBack, allShoulders, allChest, allTriceps]
        
        
        allExercises.forEach{ allGroup in
            allGroup.forEach { exercise in
                exerciseList.append(exercise)
            }
        }
        return exerciseList
    }
}

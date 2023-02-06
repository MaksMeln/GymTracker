//
//  File.swift
//  GymTracker
//
//  Created by Максим Мельничук on 30.01.23.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let gymExercise = try? JSONDecoder().decode(GymExercise.self, from: jsonData)


import UIKit



// MARK: - GymExercise
struct GymExercise: Codable {
    let day, gymExerciseSet, setting, workout: String?
    let templates, publicTemplates, workoutsession, workoutlog: String?
    let schedulestep, schedule, daysofweek, language: String?
    let license, userprofile, settingRepetitionunit, settingWeightunit: String?
    let exerciseinfo, exercisebaseinfo, exercise, exerciseTranslation: String?
    let exerciseBase, equipment, deletionLog, exercisecategory: String?
    let video, exerciseimage, exercisecomment, exercisealias: String?
    let muscle, variation, ingredient, ingredientinfo: String?
    let weightunit, ingredientweightunit, nutritionplan, nutritionplaninfo: String?
    let nutritiondiary, meal, mealitem, weightentry: String?
    let gallery, measurement, measurementCategory: String?

    enum CodingKeys: String, CodingKey {
        case day
        case gymExerciseSet = "set"
        case setting, workout, templates
        case publicTemplates = "public-templates"
        case workoutsession, workoutlog, schedulestep, schedule, daysofweek, language, license, userprofile
        case settingRepetitionunit = "setting-repetitionunit"
        case settingWeightunit = "setting-weightunit"
        case exerciseinfo, exercisebaseinfo, exercise
        case exerciseTranslation = "exercise-translation"
        case exerciseBase = "exercise-base"
        case equipment
        case deletionLog = "deletion-log"
        case exercisecategory, video, exerciseimage, exercisecomment, exercisealias, muscle, variation, ingredient, ingredientinfo, weightunit, ingredientweightunit, nutritionplan, nutritionplaninfo, nutritiondiary, meal, mealitem, weightentry, gallery, measurement
        case measurementCategory = "measurement-category"
    }
}


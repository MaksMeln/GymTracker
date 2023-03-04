//
//  ResStartWorkout.swift
//  GymTracker
//
//  Created by Максим Мельничук on 11.02.23.
//

import UIKit

enum ResStartWorkout {
    enum Images {
        static let startEmptyWorkout = UIImage(named: "startEmptyWorkout")
        static let moreInfo = UIImage(named: "moreInfo")
        static let addExercise = UIImage(named: "addExercise")
        static let exercise = UIImage(named: "exerciseRoutine")
        static let newRoutine = UIImage(named: "newRoutine")
        static let explore = UIImage(named: "explore")
        static let myRoutines = UIImage(named: "myRoutines")
        static let myRoutines_1 = UIImage(named: "myRoutines_1")
        static let infoExercise = UIImage(named: "infoExercise")
    }
    
    enum Color {
        static let placecholderText = UIColor(hexString: "#9B9B9B")
    }
    
    enum String {
        enum Buttons {
            static let startEmptyWorkout = "Start Empty Workout"
            static let newRoutine = "New Routine"
            static let explore = "Explore"
            static let startRoutine = "Start Routine"
            static let addExercise = "Add Exercise"
            static let myRoutines = "My Routines"
            static let saveRoutine = "Save"
            static let cancelRoutine = "Cancel"
            static let addSet = "Add Set"
            static let finish = "Finish"
    }
        enum Labels {
            static let quickStart = "Quick Start"
            static let routines = "Routines"
            static let set = "SET"
            static let sets = "Sets"
            static let volume = "Volume"
            static let kg = "kg"
            static let reps = "REPS"
            
        }
        
        enum Title {
            static let createRoutine = "Create Routine"
            static let startRoutine = "Log Workout"
        }
        
        enum Placecholder {
            static let subtitle = "Get started by adding an exercise to your routine."
            static let title = "Routine title"
            static let addNotes = "Add notes here..."
        }
    }
    
}


//
//  Resourses.swift
//  GymTracker
//
//  Created by Максим Мельничук on 19.01.23.
//

// Сокращения :
//          EX - Exercise


import UIKit

enum Resourses {
    
    enum Color {
        // colour for tabBar
        static let tabBar = UIColor(hexString: "#293136")
        static let activeTabBar = UIColor(hexString: "#FEFFFE")
        static let inactive = UIColor(hexString: "#828384")
        static let separator = UIColor(hexString: "#767A7C")
        static let backgroundColor = UIColor(hexString: "#FFFFFF")
        
        //color for Button
        static let activeButton = UIColor(hexString: "#58A5F8")
        static let defaultColor = UIColor(hexString: "#000000")
        
        //color exercise
        enum ExerciseCol {
            static let exTitle = UIColor(hexString: "#2A3035")
            static let exGroped = UIColor(hexString: "#606568")
            static let exHeader = UIColor(hexString: "#8A8A8D")
        }
        
        
    }
    
    enum Strings {
        enum TabBar {
            static var userInfo = "Профиль"
            static var history = "История"
            static var startTraining = "Начать тренировку"
            static var exercise = "Упражнения"
            static var settings = "Настройки"
        }
        
        enum NavBar {
            static var userInfo = "Профиль"
            static var history = "История"
            static var startTraining = "Начать тренировку"
            static var exercise = "Упражнения"
            static var settings = "Настройки"
        }
        
        enum ExeciseString {
            enum ExGrouped {
                static var bicepc = "Бицепс"
                static var chest = "Грудь"
                static var legs = "Ноги"
                static var shoulders = "Плечи"
                static var tricepc = "Трицепс"
                static var back = "Спина"
            }
            
            enum Cell {
                static var tableCell = "cell"
                static var headerCell = "headerCell"
            }
        }
    }
    
    enum Images {
        enum TabBar {
            static var userInfo = UIImage(named: "user_tab")
            static var history = UIImage(named: "history_tab")
            static var startTraining = UIImage(named: "startTraining_tab")
            static var exercise = UIImage(named: "exercise_tab")
            static var settings = UIImage(named: "settings_tab")
            }
        
        enum ExerciseImage {
            
            static var youTubeButton = UIImage(named: "youTubeButton")
            enum ExCell {
                enum Bicepc{
                    static var bic_1 = UIImage(named: "bic_1")!
                    static var bic_2 = UIImage(named: "bic_2")!
                    static var bic_3 = UIImage(named: "bic_3")!
                    static var bic_4 = UIImage(named: "bic_4")!
                    static var bic_5 = UIImage(named: "bic_5")!
                    static var bic_6 = UIImage(named: "bic_6")!
                    static var bic_7 = UIImage(named: "bic_7")!
                }
                
                enum Legs {
                    static var legs_1 = UIImage(named: "legs_1")!
                    static var legs_2 = UIImage(named: "legs_2")!
                    static var legs_3 = UIImage(named: "legs_3")!
                    static var legs_4 = UIImage(named: "legs_4")!
                    static var legs_5 = UIImage(named: "legs_5")!
                    static var legs_6 = UIImage(named: "legs_6")!
                    static var legs_7 = UIImage(named: "legs_7")!
                    static var legs_8 = UIImage(named: "legs_8")!
                }
                
                enum Back {
                    static var back_1 = UIImage(named: "back_1")!
                    static var back_2 = UIImage(named: "back_2")!
                    static var back_3 = UIImage(named: "back_3")!
                    static var back_4 = UIImage(named: "back_4")!
                    static var back_5 = UIImage(named: "back_5")!
                    static var back_6 = UIImage(named: "back_6")!
                }
                enum Shoulders {
                    static var shoulders_1 = UIImage(named: "shoulders_1")!
                    static var shoulders_2 = UIImage(named: "shoulders_2")!
                    static var shoulders_3 = UIImage(named: "shoulders_3")!
                    static var shoulders_4 = UIImage(named: "shoulders_4")!
                }
                
                enum Chest {
                    static var chest_1 = UIImage(named: "chest_1")!
                    static var chest_2 = UIImage(named: "chest_2")!
                    static var chest_3 = UIImage(named: "chest_3")!
                    static var chest_4 = UIImage(named: "chest_4")!
                }
                enum Tricepc {
                    static var tric_1 = UIImage(named: "tricepc_1")!
                    static var tric_2 = UIImage(named: "tricepc_2")!
                    static var tric_3 = UIImage(named: "tricepc_3")!
                    static var tric_4 = UIImage(named: "tricepc_4")!
                }
            }

           
        }
    }
        
    enum AllExersices {
        
        enum Bicepc {
            
            static var bicepc_1 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Bicepc.bic_1,
                                        exerciseTitle: "Hummer Curl (Dumbbell)",
                                        exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.bicepc)
            static var bicepc_2 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Bicepc.bic_2,
                                          exerciseTitle: "Concentrtion Curl (Dumbbell)",
                                           exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.bicepc)
            static var bicepc_3 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Bicepc.bic_3,
                                          exerciseTitle: "Bicepc Curl (Barbell)",
                                           exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.bicepc)
            static var bicepc_4 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Bicepc.bic_4,
                                          exerciseTitle: "Reverse Curl (Barbell)",
                                           exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.bicepc)
            static var bicepc_5 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Bicepc.bic_5,
                                          exerciseTitle: "Incline Curl (Dumbell)",
                                           exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.bicepc)
            static var bicepc_6 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Bicepc.bic_6,
                                          exerciseTitle: "Bicepc Curl (Cable)",
                                           exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.bicepc)
            static var bicepc_7 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Bicepc.bic_7,
                                          exerciseTitle: "Arm Bicep Curl (Cable)",
                                           exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.bicepc)
            
                static var allBicepc = [bicepc_1, bicepc_2, bicepc_3, bicepc_4, bicepc_5, bicepc_6, bicepc_7]
        }
        
        enum Legs {
            static var legs_1 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Legs.legs_1,
                                            exerciseTitle: "Leg press (Machine) ",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.legs)
            static var legs_2 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Legs.legs_2,
                                            exerciseTitle: "Leg extension (Machine)",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.legs)
            static var legs_3 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Legs.legs_3,
                                            exerciseTitle: "Lying Leg Curl (Machine)",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.legs)
            static var legs_4 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Legs.legs_4,
                                            exerciseTitle: "Squat (Barbell)",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.legs)
            static var legs_5 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Legs.legs_5,
                                            exerciseTitle: "Romanian Deadlift (Dumbbell)",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.legs)
            static var legs_6 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Legs.legs_6,
                                            exerciseTitle: "Golbet Squat (Kettlebell)",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.legs)
            static var legs_7 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Legs.legs_7,
                                            exerciseTitle: "Standing Calf (Dumbbell)",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.legs)
            static var legs_8 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Legs.legs_8,
                                            exerciseTitle: "Standing Calf (Barbell)",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.legs)
            
                static var allLegs = [legs_1, legs_2, legs_3, legs_4, legs_5, legs_6, legs_7, legs_8]
        }
        
        enum Back {
            static var back_1 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Back.back_1,
                                            exerciseTitle: "Bent Over Row (Barbbell)",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.back)
            static var back_2 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Back.back_2,
                                            exerciseTitle: "Seated Row( Cable)",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.back)
            static var back_3 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Back.back_3,
                                            exerciseTitle: "Lat Pulldown (Cable)",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.back)
            static var back_4 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Back.back_4,
                                            exerciseTitle: "Standing Lat Pushdown (Cable)",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.back)
            static var back_5 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Back.back_5,
                                            exerciseTitle: "Bent Over One Arm Row",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.back)
            static var back_6 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Back.back_6,
                                            exerciseTitle: "Back Extension",
                                         exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.back)
            
                static var allBack = [back_1, back_2, back_3, back_4, back_5, back_6]
            
        }
        
        enum Shoulders {
            static var shoulders_1 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Shoulders.shoulders_1,
                                            exerciseTitle: "Shrug (Dumbbell)",
                                              exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.shoulders)
            static var shoulders_2 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Shoulders.shoulders_2,
                                            exerciseTitle: "Face Pull (Cable) ",
                                              exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.shoulders)
            static var shoulders_3 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Shoulders.shoulders_3,
                                            exerciseTitle: "Lateral Raise (Dumbbell)",
                                              exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.shoulders)
            static var shoulders_4 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Shoulders.shoulders_4,
                                            exerciseTitle: "Arnold Press (Dumbbell)",
                                              exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.shoulders)
            
                static var allShoulders = [shoulders_1, shoulders_2, shoulders_3, shoulders_4]
            
        }
        
        enum Chest {
            static var chest_1 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Chest.chest_1,
                                            exerciseTitle: "Chest Fly (Hight)",
                                          exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.chest)
            static var chest_2 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Chest.chest_2,
                                            exerciseTitle: "Chest Fly(machine)",
                                          exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.chest)
            static var chest_3 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Chest.chest_3,
                                            exerciseTitle: "Chest Fly (Band)",
                                          exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.chest)
            static var chest_4 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Chest.chest_4,
                                            exerciseTitle: "Bench Press (Burbell)",
                                          exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.chest)
            
                static var allChest = [chest_1, chest_2, chest_3, chest_4]
        }
        
        enum Tricepc {
            static var tricepc_1 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Tricepc.tric_1,
                                            exerciseTitle: "Triceps Pushdown",
                                            exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.tricepc)
            
            static var tricepc_2 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Tricepc.tric_2,
                                            exerciseTitle: "Single-Arm (Dumbbell)",
                                            exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.tricepc)
            
            static var tricepc_3 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Tricepc.tric_3,
                                            exerciseTitle: "Tricepc KickBack",
                                            exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.tricepc)
            
            static var tricepc_4 = ExerciseTableList(exerciseImage: Resourses.Images.ExerciseImage.ExCell.Tricepc.tric_4,
                                            exerciseTitle: "Skull Crushers",
                                            exerciseGroup: Resourses.Strings.ExeciseString.ExGrouped.tricepc)
                
                static var allTricepc = [tricepc_1, tricepc_2, tricepc_3, tricepc_4]
        }
        
        
    }
        
    
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
}


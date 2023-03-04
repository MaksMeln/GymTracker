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
    
    //MARK: - Color's
    enum Colors {
        
        
        static let active = UIColor(hexString: "#3F81E3")
        static let inactive = UIColor(hexString: "#828384")
        static let secondary = UIColor(hexString: "#F0F3FF")
       
        
        
        static let tabBar = UIColor(hexString: "#293136")
        static let activeTabBar = UIColor(hexString: "#FEFFFE")
        static let separator = UIColor(hexString: "#DEDEDE")
        static let backgroundColor = UIColor(hexString: "#FFFFFF")
        static let defaultColor = UIColor(hexString: "#000000")
        static let cellSelected = UIColor(hexString: "#EAEAEA")
        static let startWorkoutLabel = UIColor(hexString: "#9B9B9B")

        
        
        
        //color for Button
        static let borderColor = UIColor(hexString: "#E0E0E0")
        static let buttonBackground = UIColor(hexString: "#3F81E3")
        static let buttonYouTubeBackground = UIColor(hexString: "#F7F7F7")
        
       

        enum Calories {
            static let buttonGreenBackground = UIColor(hexString: "#439951")
            static let placecholder = UIColor(hexString: "#9B9B9B")
            static let resultContainer = UIColor(hexString: "#E0E0E0")
            
        }
        
        //color exercise
        enum ExerciseCol {
            static let exTitle = UIColor(hexString: "#2A3035")
            static let exGroped = UIColor(hexString: "#9B9B9B")
            static let exHeader = UIColor(hexString: "#8A8A8D")
            static let exInstrText = UIColor(hexString: "#575757")
        }
        
        enum UserInfo {
            static let backgroundCell = UIColor(hexString: "#D9D9D9")
        }
        
        
    }
    //MARK: - String's
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .userInfo : return "User"
                case .calories : return "Сalories"
                case .startWorkout : return "Start Workout"
                case .exercise : return "Exercise"
                case .settings : return "Settings"
                }
            }
        }
        enum Cell {
            static let tableCell = "cell"
            static let headerCell = "headerCell"
            static let foodCell = "foodCell"
        }
    }
    //MARK: - Images
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .userInfo : return UIImage(named: "user_tab")
                case .calories  : return UIImage(named: "calories_tab")
                case .startWorkout : return UIImage(named: "startTraining_tab")
                case .exercise : return UIImage(named: "exercise_tab")
                case .settings : return UIImage(named: "settings_tab")
        }
            }
    }
        static let youTubeButton = UIImage(named: "youTubeButton")
    }
    
    // MARK: - Alert
    enum Alert {
        static let ok = "OK"
        static let cancel = "Cancel"
    }
       //MARK: - Font's
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
        static func helveticaBold(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica-Bold", size: size) ?? UIFont()
        }
    }
}

//
//  ResUserInfo.swift
//  GymTracker
//
//  Created by Максим Мельничук on 9.02.23.
//

import UIKit

enum ResUserInfo {
    
    enum Images {
        static let measurements = UIImage(named: "measurements")
        
    }
    
    enum Measurements {
        enum Title {
            static let title = "Measurements"
        }
        
        enum ListTable {
            enum CellNameArray {
                static let date = "Date"
                static let growth = "Growth "
                static let weight = "Weight "
            }
            enum Header {
                static let date = "DATE"
                static let growthAndWeigt = "GROWTH AND WEIGHT "
                static let bodyPart = "BODY PART "
            }
            
            enum Alert {
                enum Name {
                    static let growth = "Your Growth"
                    static let bodyWeigt = "Body Weight"
                    
                }
                
                enum Placecholder {
                    static let growth = "enter Your Growth"
                    static let bodyWeigt = "enter the Body Weight"
                    static let biceps = "enter the Biceps size "
                    static let chest = "enter the Legs size"
                    static let legs = "enter the Back size"
                    static let shoulders = "enter the Shoulders size "
                    static let triceps = "enter the Chest size"
                    static let back = "enter the Triceps size"
                }
            }
        }
    }
    
    
}

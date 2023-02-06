//
//  UILabel + ext.swift
//  GymTracker
//
//  Created by Максим Мельничук on 25.01.23.
//

import UIKit


extension UILabel {
    convenience init(text: String, font: UIFont?) {
        self.init()
        
        self.text = text
        self.font = font
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
}

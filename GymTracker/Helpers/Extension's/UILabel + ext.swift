//
//  UILabel + ext.swift
//  GymTracker
//
//  Created by Максим Мельничук on 18.02.23.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? , textColor: UIColor? ){
    self.init()
    
    self.text = text
    self.textColor = textColor
    self.font = font
    self.numberOfLines = 0
    }
}

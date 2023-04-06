//
//  GTLabel.swift
//  GymTracker
//
//  Created by Максим Мельничук on 18.02.23.
//

import UIKit

/// Extension from UILabel
final class GTLabel: UILabel {
    
     init(text: String, font: UIFont? , textColor: UIColor? ){
         super.init(frame: .zero)
    
    self.text = text
    self.textColor = textColor
    self.font = font
    self.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

//
//  GTTextField.swift
//  GymTracker
//
//  Created by Максим Мельничук on 10.03.23.
//
import UIKit

final class GTTextField : UITextField {
    
    init(placeholder: String, font: UIFont? , textColor: UIColor?, keyboardType: UIKeyboardType) {
        super.init(frame: .zero)
        
        self.placeholder = placeholder
        self.font = font
        self.textColor = textColor
        self.keyboardType = keyboardType
    
        self.borderStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


final class CaloriesTextField : UITextField {
    
    //MARK: -LIFECYCLE
     init(placeholder : String) {
        super.init(frame: .zero)
       
        let spacer = UIView()
         spacer.setDimensions(height: 50, width: 12)
         leftView = spacer
         leftViewMode = .always
         
         borderStyle = .none
         layer.borderColor = Resourses.Colors.borderColor.cgColor
         layer.borderWidth = 3
         layer.cornerRadius = 7
         textColor = Resourses.Colors.defaultColor
         keyboardAppearance = .dark
         keyboardType = .numberPad
         backgroundColor = Resourses.Colors.backgroundColor
         setHeight(62)
         setWidth(170)
         attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor : Resourses.Colors.Calories.placecholder])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

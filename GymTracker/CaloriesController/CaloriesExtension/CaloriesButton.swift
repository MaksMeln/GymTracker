//
//  CaloriesButton.swift
//  GymTracker
//
//  Created by Максим Мельничук on 17.02.23.
//

import UIKit

public enum CaloriesButtonType {
    case caloriesControllerButton
    case calculate
    case resultButton
}

class CaloriesButton : UIButton {
    
    //MARK: - PROPERTIES
    private var type: CaloriesButtonType = .caloriesControllerButton
    
    private let label = UILabel()
    private let iconView = UIImageView ()
    
    //MARK: - LIFECYCLE
    init(with type: CaloriesButtonType) {
        super.init(frame: .zero)
        self.type = type
        
        setupViews()
        constaintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        setupViews()
        constaintViews()
        configureAppearance()
    }
    
    func setInfo(_ title: String?, _ image: UIImage?) {
        label.text = title
        iconView.image = image
    }
}

// MARK: - EXTENSION
private extension CaloriesButton {
    
    func setupViews() {
        setupView(label)
        setupView(iconView)
    }
    
    //MARK: - CONSTRAINTVIEWS
    func constaintViews() {
        switch type {
            
        case .caloriesControllerButton :
            setDimensions(height: 62, width: 345)
            setCenter(label)
            iconView.setDimensions(height: 27, width: 27)
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
            iconView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            
        case .calculate :
            setDimensions(height: 70, width: 220)
            setCenter(label)
            
        case .resultButton :
            setDimensions(height: 58, width: 183)
            setCenter(label)
        }
    }
    
    //MARK: - CONFIGUREAPPEARANCE
    func configureAppearance() {
        
        switch type {
            
        case .caloriesControllerButton :
            backgroundColor = Resourses.Colors.backgroundColor
            layer.borderWidth = 2
            layer.borderColor = Resourses.Colors.borderColor.cgColor
            layer.cornerRadius = 7
            label.textColor = Resourses.Colors.defaultColor
            label.font = Resourses.Fonts.helveticaRegular(with: 17)
            iconView.tintColor = Resourses.Colors.active
            
        case .calculate :
            backgroundColor = Resourses.Colors.buttonBackground
            layer.cornerRadius = 20
            label.text = ResCalories.String.Buttons.calculate
            label.textColor = .white
            label.font = Resourses.Fonts.helveticaRegular(with: 25)
            label.textAlignment = .center
            
        case .resultButton :
            backgroundColor = Resourses.Colors.Calories.buttonGreenBackground
            layer.cornerRadius = 10
            label.text = ResCalories.String.Buttons.resultButton
            label.textColor = .white
            label.font = Resourses.Fonts.helveticaRegular(with: 17)
            label.textAlignment = .center
            
        }
        makeSystem(self)
    }
    
}


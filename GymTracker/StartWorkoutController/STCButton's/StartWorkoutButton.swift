//
//  StartEmptyWorkoutButton.swift
//  GymTracker
//
//  Created by Максим Мельничук on 11.02.23.
//

import UIKit

public enum STCButtonType {
    case startEmptyWorkout
    case newRoutineAndExplore
    case startRoutineExerise
    case addExercise
    case myRoutines
}

class StartWorkoutButton : UIButton {
    
    private var type: STCButtonType = .startEmptyWorkout
    
    private let lable = UILabel()
    private let iconView = UIImageView ()
    
    
    init(with type: STCButtonType) {
        super.init(frame: .zero)
        self.type = type
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    func setInfo(_ title: String?, _ image: UIImage?) {
        lable.text = title
        iconView.image = image
    }
}

private extension StartWorkoutButton {
    
    func setupViews() {
        setupView(lable)
        setupView(iconView)
    }
    
//MARK: - CONSTRAINTVIEWS
    func constraintViews() {
        switch type {
        case .startEmptyWorkout :
            
            setDimensions(height: 52, width: 362)
            iconView.setDimensions(height: 15, width: 15)
            
            NSLayoutConstraint.activate([
            
                iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
                iconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
                
                lable.centerYAnchor.constraint(equalTo: centerYAnchor),
                lable.leadingAnchor.constraint(equalTo: iconView.trailingAnchor, constant: 14),
            ])
        case .newRoutineAndExplore :
            
            setDimensions(height: 52, width: 170)
            iconView.setDimensions(height: 23, width: 19)
            
            NSLayoutConstraint.activate([
               
                iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
                iconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
                
                lable.centerYAnchor.constraint(equalTo: centerYAnchor),
                lable.leadingAnchor.constraint(equalTo: iconView.trailingAnchor, constant: 14),
            ])
        case .myRoutines :
            
            setDimensions(height: 20, width: 120)
            
            NSLayoutConstraint.activate([
                
                iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
                iconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
                
                lable.centerYAnchor.constraint(equalTo: centerYAnchor),
                lable.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -3),
            ])
            
        case .addExercise :
            
            setDimensions(height: 41, width: 327)
            setCenter(lable)
            iconView.setDimensions(height: 9, width: 9)
            
            NSLayoutConstraint.activate([
               
                iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
                iconView.trailingAnchor.constraint(equalTo: lable.leadingAnchor, constant: -3),
            ])
            
        case .startRoutineExerise :
            
            setDimensions(height: 41, width: 327)
            
            lable.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        }
    }
//MARK: - CONFIGUREAPPEARANCE
    func configureAppearance() {
        switch type {
        case .startEmptyWorkout:
            configureButtonWhiteBackground()
            
        case .newRoutineAndExplore:
            configureButtonWhiteBackground()
            
        case .myRoutines :
            lable.textColor = Resourses.Colors.inactive
            lable.font = Resourses.Fonts.helveticaRegular(with: 17)
            iconView.tintColor = Resourses.Colors.active
            
        case .startRoutineExerise :
          configureButtonBlueBackground()
            
        case .addExercise :
            configureButtonBlueBackground()
        }
        makeSystem(self)
    }
    
    func configureButtonWhiteBackground() {
        backgroundColor = Resourses.Colors.backgroundColor
        layer.borderWidth = 2
        layer.borderColor = Resourses.Colors.borderColor.cgColor
        layer.cornerRadius = 7
        lable.textColor = Resourses.Colors.defaultColor
        lable.font = Resourses.Fonts.helveticaRegular(with: 17)
        iconView.tintColor = Resourses.Colors.active
    }
    
    func configureButtonBlueBackground() {
        backgroundColor = Resourses.Colors.buttonBackground
        layer.cornerRadius = 7
        lable.textColor = Resourses.Colors.backgroundColor
        lable.font = Resourses.Fonts.helveticaRegular(with: 16)
        lable.textAlignment = .center
        lable.tintColor = Resourses.Colors.defaultColor
    }
}

//
//  StartEmptyWorkoutButton.swift
//  GymTracker
//
//  Created by Максим Мельничук on 11.02.23.
//

import UIKit

public enum GTStartWorkoutButtonType {
    case startEmptyWorkout
    case newRoutineAndExplore
    case startRoutineExerise
    case addExercise
    case myRoutines
    case addSet
}

final class GTStartWorkoutButton : UIButton {
    
    private var type: GTStartWorkoutButtonType = .startEmptyWorkout
    
    private let label = UILabel()
    private let iconView = UIImageView ()
    
    
    init(with type: GTStartWorkoutButtonType) {
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
        label.text = title
        iconView.image = image
    }
}

private extension GTStartWorkoutButton {
    
    func setupViews() {
        addSubviews(label, iconView)
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
                
                label.centerYAnchor.constraint(equalTo: centerYAnchor),
                label.leadingAnchor.constraint(equalTo: iconView.trailingAnchor, constant: 14),
            ])
        case .newRoutineAndExplore :
            
            setDimensions(height: 52, width: 170)
            iconView.setDimensions(height: 23, width: 19)
            
            NSLayoutConstraint.activate([
                
                iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
                iconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
                
                label.centerYAnchor.constraint(equalTo: centerYAnchor),
                label.leadingAnchor.constraint(equalTo: iconView.trailingAnchor, constant: 14),
            ])
        case .myRoutines :
            
            setDimensions(height: 20, width: 120)
            
            NSLayoutConstraint.activate([
                
                iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
                iconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
                
                label.centerYAnchor.constraint(equalTo: centerYAnchor),
                label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -3),
            ])
            
        case .addExercise :
            
            setDimensions(height: 41, width: 327)
            setCenter(label)
            iconView.setDimensions(height: 9, width: 9)
            
            NSLayoutConstraint.activate([
                iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
                iconView.trailingAnchor.constraint(equalTo: label.leadingAnchor, constant: -3),
            ])
            
        case .startRoutineExerise :
            
            setDimensions(height: 41, width: 327)
            label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
            
            
        case .addSet:
            setDimensions(height: 36, width: 358)
            setCenter(label)
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
            label.textColor = Resourses.Colors.inactive
            label.font = Resourses.Fonts.helveticaRegular(with: 17)
            iconView.tintColor = Resourses.Colors.active
            
        case .startRoutineExerise :
            configureButtonBlueBackground()
            
        case .addExercise :
            configureButtonBlueBackground()
            
        case .addSet:
            backgroundColor = Resourses.Colors.buttonAddSet
            layer.cornerRadius = 7
            label.textColor = .black
            label.font = Resourses.Fonts.helveticaRegular(with: 17)
    
        }
        makeSystem(self)
    }
    
    func configureButtonWhiteBackground() {
        backgroundColor = Resourses.Colors.backgroundColor
        layer.borderWidth = 2
        layer.borderColor = Resourses.Colors.borderColor.cgColor
        layer.cornerRadius = 7
        label.textColor = Resourses.Colors.defaultColor
        label.font = Resourses.Fonts.helveticaRegular(with: 17)
        iconView.tintColor = Resourses.Colors.active
    }
    
    func configureButtonBlueBackground() {
        backgroundColor = Resourses.Colors.buttonBackground
        layer.cornerRadius = 7
        label.textColor = Resourses.Colors.backgroundColor
        label.font = Resourses.Fonts.helveticaRegular(with: 16)
        label.textAlignment = .center
        label.tintColor = Resourses.Colors.defaultColor
    }
}

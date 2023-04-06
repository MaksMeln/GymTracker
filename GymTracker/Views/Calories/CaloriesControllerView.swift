//
//  CaloriesControllerView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 5.04.23.
//

import Foundation
import UIKit

final class CaloriesView : UIView {
    
//MARK: - Properties
    
    private let caloriesCalcuationLabel = GTLabel(text: ResCalories.String.Labels.caloriesCalcuation,
                                                  font: Resourses.Fonts.helveticaBold(with: 19),
                                                  textColor: Resourses.Colors.defaultColor)
    
    public let caloriesNeedButton : GTCaloriesButton = {
        let button = GTCaloriesButton(with: .caloriesControllerButton)
        button.setInfo(ResCalories.String.Buttons.caloriesNeed,
                       ResCalories.Images.caloriesNeed)
        return button
    }()
    
    public let bodyMassIndexButton : GTCaloriesButton = {
        let button = GTCaloriesButton(with: .caloriesControllerButton)
        button.setInfo(ResCalories.String.Buttons.bodyMassIndex,
                       ResCalories.Images.bodyMassIndex)
        return button
    }()
   public let fatRateButton : GTCaloriesButton = {
        let button = GTCaloriesButton(with: .caloriesControllerButton)
        button.setInfo(ResCalories.String.Buttons.fatRate,
                       ResCalories.Images.fatRate)
        return button
    }()
    public let foodsCaloriesButton : GTCaloriesButton = {
        let button = GTCaloriesButton(with: .caloriesControllerButton)
        button.setInfo(ResCalories.String.Buttons.foodsCalories,
                       ResCalories.Images.foodsCalories)
        return button
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        
        addSubviews(caloriesCalcuationLabel)
        constraintViews()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - ConstraintViews
     func constraintViews() {
        
        let stackViewButton = UIStackView(arrangedSubviews: [caloriesNeedButton, bodyMassIndexButton, fatRateButton, foodsCaloriesButton])
        stackViewButton.axis = .vertical
        stackViewButton.spacing = 31
         addSubviews(stackViewButton)
        
        NSLayoutConstraint.activate([
            
            caloriesCalcuationLabel.topAnchor.constraint(equalTo: topAnchor, constant: 31),
            caloriesCalcuationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            stackViewButton.topAnchor.constraint(equalTo: caloriesCalcuationLabel.bottomAnchor, constant: 31),
            stackViewButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}

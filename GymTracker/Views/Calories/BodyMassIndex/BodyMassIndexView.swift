//
//  BodyMassIndexView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 5.04.23.
//

import UIKit

/// View of Body Mass Index
final class BodyMassIndexView: UIView {
    
    
//MARK: - Properties
    public let infoLabel = GTLabel(text: ResCalories.String.Labels.CaloriesButtonController.bodyMassIndex,
                                   font: Resourses.Fonts.helveticaBold(with: 18),
                                   textColor: Resourses.Colors.defaultColor)
    
    public let heightTextField = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.height)
    public let weightTextField = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.weight)
    
    public let calculateButton = GTCaloriesButton(with: .calculate)
    
    public let resultContainer = UIView(backgroundColor: Resourses.Colors.Calories.resultContainer,
                                        borderColor: Resourses.Colors.borderColor.cgColor,
                                        borderWidth: 3,
                                        cornerRadius: 7,
                                        height: 120, width: 270)
    
    public let bodyMassIndexLabel = GTLabel(text: "",
                                            font: Resourses.Fonts.helveticaBold(with: 25),
                                            textColor:  Resourses.Colors.defaultColor)
    
    public let resultButton = GTCaloriesButton(with: .resultButton)
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews(infoLabel, calculateButton, resultContainer, resultButton)
        constraintViews()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
//MARK: - ConstraintViews
   private func constraintViews() {
        let stackView = UIStackView(arrangedSubviews: [heightTextField, weightTextField])
        stackView.axis = .horizontal
        stackView.spacing = 20
        addSubviews(stackView)
        
        resultContainer.addSubviews(bodyMassIndexLabel)
        
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            infoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            stackView.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 22),
            stackView.leadingAnchor.constraint(equalTo:leadingAnchor, constant: 15),
            
            calculateButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 42),
            calculateButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            resultContainer.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 42),
            resultContainer.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            bodyMassIndexLabel.centerXAnchor.constraint(equalTo: resultContainer.centerXAnchor),
            bodyMassIndexLabel.centerYAnchor.constraint(equalTo: resultContainer.centerYAnchor),
            
            resultButton.topAnchor.constraint(equalTo: resultContainer.bottomAnchor, constant: 42),
            resultButton.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}


//
//  FatRateView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 5.04.23.
//

import UIKit

final class FatRateView: UIView {
    
    //MARK: - PROPERTIES
    public let infoLabel = GTLabel(text: ResCalories.String.Labels.CaloriesButtonController.fatRate,
                                    font: Resourses.Fonts.helveticaBold(with: 18),
                                    textColor: Resourses.Colors.defaultColor)
    
    public let heightTextField =  CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.height)
    public let weightTextField = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.weight)
    public let neckTextField = CaloriesTextField(placeholder:  ResCalories.String.TextField.SizeField.neck)
    public let waistTextField = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.waist)
    
    
    public let genderTextField : UITextField = {
        let activityText = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.gender)
        
        let container = UIView()
        let image = UIImageView()
        let spacer = UIView()
        container.setDimensions(height: 20, width: 30)
        image.setDimensions(height: 11, width: 15)
        spacer.setDimensions(height: 20, width: 10)
        
        image.image = ResCalories.Images.activityGenderArrow
        
        container.addSubview(spacer)
        container.addSubview(image)
        
        container.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        spacer.translatesAutoresizingMaskIntoConstraints = false
        
        image.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -10).isActive = true
        
        activityText.rightView = container
        activityText.rightViewMode = .always
        
        return activityText
    }()
    
    public let calculateButton = GTCaloriesButton(with: .calculate)
    
    public let resultContainer = UIView(backgroundColor: Resourses.Colors.Calories.resultContainer,
                                         borderColor: Resourses.Colors.borderColor.cgColor,
                                         borderWidth: 3,
                                         cornerRadius: 7,
                                         height: 120, width: 270)
    
    public let bodyFatRateLabel = GTLabel(text: "",
                                           font: UIFont.boldSystemFont(ofSize: 25),
                                           textColor:  Resourses.Colors.defaultColor)
    
    public let resultButton = GTCaloriesButton(with: .resultButton)
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews(infoLabel, genderTextField, calculateButton, resultContainer, bodyFatRateLabel, resultButton)
        
        constraintViews()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
//MARK: - ConstraintViews
    private func constraintViews() {
        
        let stackViewLeft = UIStackView(arrangedSubviews: [heightTextField, neckTextField])
        stackViewLeft.axis = .vertical
        stackViewLeft.spacing = 26
        addSubviews(stackViewLeft)
        
        let stackViewRight = UIStackView(arrangedSubviews: [weightTextField, waistTextField])
        stackViewRight.axis = .vertical
        stackViewRight.spacing = 26
        addSubviews(stackViewRight)
        
        resultContainer.addSubview(bodyFatRateLabel)
        
        NSLayoutConstraint.activate([
            
            infoLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            infoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            stackViewLeft.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 22),
            stackViewLeft.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            stackViewRight.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 22),
            stackViewRight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            genderTextField.topAnchor.constraint(equalTo: stackViewLeft.bottomAnchor, constant: 22),
            genderTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            calculateButton.topAnchor.constraint(equalTo: genderTextField.bottomAnchor, constant: 42),
            calculateButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            resultContainer.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 42),
            resultContainer.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            bodyFatRateLabel.centerXAnchor.constraint(equalTo: resultContainer.centerXAnchor),
            bodyFatRateLabel.centerYAnchor.constraint(equalTo: resultContainer.centerYAnchor),
            
            resultButton.topAnchor.constraint(equalTo: resultContainer.bottomAnchor, constant: 42),
            resultButton.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}

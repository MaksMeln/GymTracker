//
//  CaloriesNeedView.wift
//  GymTracker
//
//  Created by Максим Мельничук on 5.04.23.
//

// сделать таргет на калькулятор

import UIKit

final class CaloriesNeedView: UIView {
    
    //MARK: - PROPERTIES
    public let genders = ResCalories.String.Picker.genders
    public let activities = ResCalories.String.Picker.activities
    
    public let infoLabel = GTLabel(text: ResCalories.String.Labels.CaloriesButtonController.caloriesNeed,
                                    font: Resourses.Fonts.helveticaBold(with: 18),
                                    textColor: Resourses.Colors.defaultColor)
    
    public let heightTextField =  CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.height)
    public let ageTextField = CaloriesTextField(placeholder:  ResCalories.String.TextField.SizeField.age)
    public let weightTextField = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.weight)
    
    public let activityTextField : UITextField = {
        let activityText = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.activityFactory)

        let container = UIView()
        let image = UIImageView()
        let spacer = UIView()
        container.setDimensions(height: 20, width: 30)
        image.setDimensions(height: 11, width: 15)
        spacer.setDimensions(height: 20, width: 5)

        image.image = ResCalories.Images.activityGenderArrow
        image.widthAnchor.constraint(equalToConstant: 15).isActive = true
        image.heightAnchor.constraint(equalToConstant: 11).isActive = true
        
        container.addSubviews(spacer)
        container.addSubviews(image)
        
        spacer.translatesAutoresizingMaskIntoConstraints = false

        image.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -10).isActive = true

        activityText.rightView = container
        activityText.rightViewMode = .always

        return activityText
    }()
    public let genderTextField : UITextField = {
        let activityText = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.gender)

        let container = UIView()
        let image = UIImageView()
        let spacer = UIView()
        container.setDimensions(height: 20, width: 30)
        image.setDimensions(height: 11, width: 15)
        spacer.setDimensions(height: 20, width: 10)

        image.image = ResCalories.Images.activityGenderArrow
        
        container.addSubviews(spacer)
        container.addSubviews(image)
        
        container.translatesAutoresizingMaskIntoConstraints = false
        
        image.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -10).isActive = true

        activityText.rightView = container
        activityText.rightViewMode = .always

        return activityText
    }()

    public let calculateButton : GTCaloriesButton = {
        let button = GTCaloriesButton(with: .calculate)
        return button
    }()
    
  
    public let resultContainer = UIView(backgroundColor: Resourses.Colors.Calories.resultContainer,
                                         borderColor: Resourses.Colors.borderColor.cgColor,
                                         borderWidth: 3,
                                         cornerRadius: 7,
                                         height: 120, width: 270)

    public let calorieLabel = GTLabel(text: "",
                                       font: UIFont.boldSystemFont(ofSize: 25),
                                       textColor:  Resourses.Colors.defaultColor)
    
//MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
      
        addSubviews(infoLabel, genderTextField, calculateButton, resultContainer, calorieLabel)
            
        constraintViews()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
//MARK: - ConstraintViews
    func constraintViews() {
        
        let stackViewLeft = UIStackView(arrangedSubviews: [heightTextField, ageTextField])
        stackViewLeft.axis = .vertical
        stackViewLeft.spacing = 26
        addSubviews(stackViewLeft)
    
        let stackViewRight = UIStackView(arrangedSubviews: [weightTextField, activityTextField])
        stackViewRight.axis = .vertical
        stackViewRight.spacing = 26
        addSubviews(stackViewRight)
        
        resultContainer.addSubviews(calorieLabel)
        
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
            
            calorieLabel.centerXAnchor.constraint(equalTo: resultContainer.centerXAnchor),
            calorieLabel.centerYAnchor.constraint(equalTo: resultContainer.centerYAnchor),
        ])
    }
}

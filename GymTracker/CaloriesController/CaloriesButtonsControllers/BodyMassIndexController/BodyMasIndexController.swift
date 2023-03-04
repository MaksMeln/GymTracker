//
//  BodyMasIndexController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 17.02.23.
//

import UIKit

class BodyMassIndexController: GTBaseController {
    
    //MARK: - PROPERTIES
    private let infoLabel = UILabel(text: ResCalories.String.Labels.CaloriesButtonController.bodyMassIndex,
                                    font: Resourses.Fonts.helveticaBold(with: 18),
                                    textColor: Resourses.Colors.defaultColor)
    
    private let heightTextField = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.height)
    private let weightTextField = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.weight)
    
    private let calculateButton : CaloriesButton = {
        let button = CaloriesButton(with: .calculate)
        button.addTarget(self, action: #selector(handleCalculate), for: .touchUpInside)
        return button
    }()
    
  
    private let resultContainer = UIView(backgroundColor: Resourses.Colors.Calories.resultContainer,
                                         borderColor: Resourses.Colors.borderColor.cgColor,
                                         borderWidth: 3,
                                         cornerRadius: 7,
                                         height: 120, width: 270)
    
    private let bodyMassIndexLabel = UILabel(text: "",
                                       font: Resourses.Fonts.helveticaBold(with: 25),
                                       textColor:  Resourses.Colors.defaultColor)
    
    private let resultButton : CaloriesButton = {
        let button = CaloriesButton(with: .resultButton)
        button.addTarget(self, action: #selector(handleResultButton), for: .touchUpInside)
        return button
    }()
}


    // MARK: - LIFECYCLE
extension BodyMassIndexController {
    
    override func setupViews() {
        super.setupViews()
        title = ResCalories.String.Title.bodyMassIndex
        
        view.setupView(infoLabel)
        view.setupView(calculateButton)
        view.setupView(resultContainer)
        view.setupView(resultButton)
    }
    
    override func constraintViews() {
        let stackView = UIStackView(arrangedSubviews: [heightTextField, weightTextField])
        stackView.axis = .horizontal
        stackView.spacing = 20
        view.setupView(stackView)
        
        resultContainer.setupView(bodyMassIndexLabel)
        
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
           
            stackView.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 22),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            
            calculateButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 42),
            calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            resultContainer.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 42),
            resultContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            bodyMassIndexLabel.centerXAnchor.constraint(equalTo: resultContainer.centerXAnchor),
            bodyMassIndexLabel.centerYAnchor.constraint(equalTo: resultContainer.centerYAnchor),
            
            resultButton.topAnchor.constraint(equalTo: resultContainer.bottomAnchor, constant: 42),
            resultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
  //MARK: - BUTTONS TARGET
    @objc func handleCalculate() {
        let height = Double(heightTextField.text!)
        let weight = Double(weightTextField.text!)
        
        if heightTextField.text?.isEmpty == false && weightTextField.text?.isEmpty == false {
       
             let bodyMassIndex = (weight!) / ((height! / 100) * (height! / 100))
                bodyMassIndexLabel.text = "\(String(Int(bodyMassIndex)))kg/m2"
        } else {
            showMessage()
        }
    }
    
    @objc func handleResultButton(){
        present(BodyMassIndexDetailController(), animated: true, completion: nil)
    }
}

//
//  CaloriesNeedController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 17.02.23.
//

import UIKit

class  CaloriesNeedController: GTBaseController, UIPickerViewDelegate {
    
    private let genders = ResCalories.String.Picker.genders
    private let activities = ResCalories.String.Picker.activities
    
    
    //MARK: - PROPERTIES
    private let infoLabel = UILabel(text: ResCalories.String.Labels.CaloriesButtonController.caloriesNeed,
                                    font: Resourses.Fonts.helveticaBold(with: 18),
                                    textColor: Resourses.Colors.defaultColor)
    
    private let heightTextField =  CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.height)
    private let ageTextField = CaloriesTextField(placeholder:  ResCalories.String.TextField.SizeField.age)
    private let weightTextField = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.weight)
    
    private let activityTextField : UITextField = {
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
        
        container.setupView(spacer)
        container.setupView(image)
        
        spacer.translatesAutoresizingMaskIntoConstraints = false

        image.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -10).isActive = true

        activityText.rightView = container
        activityText.rightViewMode = .always

        return activityText
    }()
    private let genderTextField : UITextField = {
        let activityText = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.gender)

        let container = UIView()
        let image = UIImageView()
        let spacer = UIView()
        container.setDimensions(height: 20, width: 30)
        image.setDimensions(height: 11, width: 15)
        spacer.setDimensions(height: 20, width: 10)

        image.image = ResCalories.Images.activityGenderArrow
        
        container.setupView(spacer)
        container.setupView(image)
        
        container.translatesAutoresizingMaskIntoConstraints = false
        
        image.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -10).isActive = true

        activityText.rightView = container
        activityText.rightViewMode = .always

        return activityText
    }()

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

    private let calorieLabel = UILabel(text: "",
                                       font: UIFont.boldSystemFont(ofSize: 25),
                                       textColor:  Resourses.Colors.defaultColor)
    
}
    //MARK: -LIFECYCLE
extension CaloriesNeedController{
    
        override func setupViews() {
            super.setupViews()
            title = ResCalories.String.Title.caloriesNeed
            view.setupView(infoLabel)
            view.setupView(genderTextField)
            view.setupView(calculateButton)
            view.setupView(resultContainer)
            view.setupView(calorieLabel)
            configureGenderDropdown()
            configureActivityDropdown()
    
        }
    
    override func constraintViews() {
        
        let stackViewLeft = UIStackView(arrangedSubviews: [heightTextField, ageTextField])
        stackViewLeft.axis = .vertical
        stackViewLeft.spacing = 26
        view.setupView(stackViewLeft)
    
        let stackViewRight = UIStackView(arrangedSubviews: [weightTextField, activityTextField])
        stackViewRight.axis = .vertical
        stackViewRight.spacing = 26
        view.setupView(stackViewRight)
        
        resultContainer.setupView(calorieLabel)
        
        NSLayoutConstraint.activate([
            
            infoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
           
            stackViewLeft.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 22),
            stackViewLeft.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            
            stackViewRight.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 22),
            stackViewRight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            
            genderTextField.topAnchor.constraint(equalTo: stackViewLeft.bottomAnchor, constant: 22),
            genderTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            calculateButton.topAnchor.constraint(equalTo: genderTextField.bottomAnchor, constant: 42),
            calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            resultContainer.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 42),
            resultContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            calorieLabel.centerXAnchor.constraint(equalTo: resultContainer.centerXAnchor),
            calorieLabel.centerYAnchor.constraint(equalTo: resultContainer.centerYAnchor),
        ])
    }
    
    //MARK: -ACTIONS
    
    @objc func dismissPicker() {
        view.endEditing(true)
    }
    
    @objc func handleCalculate() {
        
        if activityTextField.text?.isEmpty == false && genderTextField.text?.isEmpty == false && heightTextField.text?.isEmpty == false && weightTextField.text?.isEmpty == false && ageTextField.text?.isEmpty == false {
       
            
            if activityTextField.text == ResCalories.String.Picker.activities[0] {
            let calories = calculateBMR() * 1.2
                calorieLabel.text = String(Int(calories)) + ResCalories.String.TextField.Result.calories
        }else if activityTextField.text == ResCalories.String.Picker.activities[1]{
            let calories = calculateBMR() * 1.375
            calorieLabel.text = String(Int(calories)) + ResCalories.String.TextField.Result.calories
        }else if activityTextField.text == ResCalories.String.Picker.activities[2]{
            let calories = calculateBMR() * 1.55
            calorieLabel.text = String(Int(calories)) + ResCalories.String.TextField.Result.calories
        }else if activityTextField.text == ResCalories.String.Picker.activities[3] {
            let calories = calculateBMR() * 1.725
            calorieLabel.text = String(Int(calories)) + ResCalories.String.TextField.Result.calories
        }else if activityTextField.text == ResCalories.String.Picker.activities[4] {
            let calories = calculateBMR() * 1.9
            calorieLabel.text = String(Int(calories)) + ResCalories.String.TextField.Result.calories
        }

        } else {
            showMessage()
        }
   
    }
    
    //MARK: -HELPERS
    
    func createToolbar() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: ResCalories.String.Alert.done, style: .plain, target: self, action: #selector(self.dismissPicker))
        toolBar.setItems([doneButton], animated: false)
        
        toolBar.isUserInteractionEnabled = true
        genderTextField.inputAccessoryView = toolBar
        activityTextField.inputAccessoryView = toolBar
    }
    
    func configureActivityDropdown(){
        let pickerView = UIPickerView()
        pickerView.tag = 1
        pickerView.delegate = self
        activityTextField.inputView = pickerView
        createToolbar()
    }
    
    func configureGenderDropdown(){
        let pickerView = UIPickerView()
        pickerView.tag = 2
        pickerView.delegate = self
        genderTextField.inputView = pickerView
        createToolbar()
    }
    
    func calculateBMR() -> Double {
        let height = Double(heightTextField.text!)
        let weight =  Double(weightTextField.text!)
        let gender = genderTextField.text!
        let age = Double(ageTextField.text!)
//        let activity = activityTextField.text!
        
        if gender == "Male" {
            return 88.362 + (13.397 * weight!) + (4.799 * height!) - (5.677 * age!)
        }else {
            return  447.593 + (9.247 * weight!) + (3.098 * height!) - (4.330 * age!)
        }
    }

}

//MARK: -UIPickerViewDataSource
extension CaloriesNeedController : UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return activities.count
        }else {
            return genders.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return activities[row]
        }else {
            return genders[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            return activityTextField.text = activities[row]
        }else {
            return genderTextField.text = genders[row]
        }
    }
}

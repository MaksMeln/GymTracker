//
//  CaloriesNeedController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 17.02.23.
//

import UIKit

final class  CaloriesNeedController: GTBaseViewController, UIPickerViewDelegate {
    
    private let primaryView = CaloriesNeedView()
    
    //MARK: -LIFECYCLE
    
    override func setupViews() {
        super.setupViews()
        title = ResCalories.String.Title.caloriesNeed
        
        view.addSubviews(primaryView)
        
        configureGenderDropdown()
        configureActivityDropdown()
        
    }
    
    override func constraintViews() {
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.topAnchor),
            primaryView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            primaryView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    //MARK: -ACTIONS
    
    @objc func dismissPicker() {
        view.endEditing(true)
    }
    
    @objc func handleCalculate() {
        
        if primaryView.activityTextField.text?.isEmpty == false && primaryView.genderTextField.text?.isEmpty == false && primaryView.heightTextField.text?.isEmpty == false && primaryView.weightTextField.text?.isEmpty == false && primaryView.ageTextField.text?.isEmpty == false {
            
            
            if primaryView.activityTextField.text == ResCalories.String.Picker.activities[0] {
                let calories = calculateBMR() * 1.2
                primaryView.calorieLabel.text = String(Int(calories)) + ResCalories.String.TextField.Result.calories
            }else if primaryView.activityTextField.text == ResCalories.String.Picker.activities[1]{
                let calories = calculateBMR() * 1.375
                primaryView.calorieLabel.text = String(Int(calories)) + ResCalories.String.TextField.Result.calories
            }else if primaryView.activityTextField.text == ResCalories.String.Picker.activities[2]{
                let calories = calculateBMR() * 1.55
                primaryView.calorieLabel.text = String(Int(calories)) + ResCalories.String.TextField.Result.calories
            }else if primaryView.activityTextField.text == ResCalories.String.Picker.activities[3] {
                let calories = calculateBMR() * 1.725
                primaryView.calorieLabel.text = String(Int(calories)) + ResCalories.String.TextField.Result.calories
            }else if primaryView.activityTextField.text == ResCalories.String.Picker.activities[4] {
                let calories = calculateBMR() * 1.9
                primaryView.calorieLabel.text = String(Int(calories)) + ResCalories.String.TextField.Result.calories
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
        primaryView.genderTextField.inputAccessoryView = toolBar
        primaryView.activityTextField.inputAccessoryView = toolBar
    }
    
    func configureActivityDropdown(){
        let pickerView = UIPickerView()
        pickerView.tag = 1
        pickerView.delegate = self
        primaryView.activityTextField.inputView = pickerView
        createToolbar()
    }
    
    func configureGenderDropdown(){
        let pickerView = UIPickerView()
        pickerView.tag = 2
        pickerView.delegate = self
        primaryView.genderTextField.inputView = pickerView
        createToolbar()
    }
    
    func calculateBMR() -> Double {
        let height = Double(primaryView.heightTextField.text!)
        let weight =  Double(primaryView.weightTextField.text!)
        let gender = primaryView.genderTextField.text!
        let age = Double(primaryView.ageTextField.text!)
        //        let activity = primaryView.activityTextField.text!
        
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
            return primaryView.activities.count
        }else {
            return primaryView.genders.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return primaryView.activities[row]
        }else {
            return primaryView.genders[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            return primaryView.activityTextField.text = primaryView.activities[row]
        }else {
            return primaryView.genderTextField.text = primaryView.genders[row]
        }
    }
}

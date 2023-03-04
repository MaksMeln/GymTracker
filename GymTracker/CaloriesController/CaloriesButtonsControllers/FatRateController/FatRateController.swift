//
//  FatRateController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 17.02.23.
//

import UIKit

class  FatRateController: GTBaseController, UIPickerViewDelegate {
    
    private let genders = ResCalories.String.Picker.genders
    
    //MARK: - PROPERTIES
    private let infoLabel = UILabel(text: ResCalories.String.Labels.CaloriesButtonController.fatRate,
                                    font: Resourses.Fonts.helveticaBold(with: 18),
                                    textColor: Resourses.Colors.defaultColor)
    
    private let heightTextField =  CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.height)
    private let weightTextField = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.weight)
    private let neckTextField = CaloriesTextField(placeholder:  ResCalories.String.TextField.SizeField.neck)
    private let waistTextField = CaloriesTextField(placeholder: ResCalories.String.TextField.SizeField.waist)
    
    
    private let genderTextField : UITextField = {
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
    
    private let bodyFatRateLabel = UILabel(text: "",
                                           font: UIFont.boldSystemFont(ofSize: 25),
                                           textColor:  Resourses.Colors.defaultColor)
    
    private let resultButton : CaloriesButton = {
        let button = CaloriesButton(with: .resultButton)
        button.addTarget(self, action: #selector(handleResultButton), for: .touchUpInside)
        return button
    }()
    
}

//MARK: -LIFECYCLE
extension FatRateController {
    
    override func setupViews() {
        super.setupViews()
        title = ResCalories.String.Title.caloriesNeed
        view.setupView(infoLabel)
        view.setupView(genderTextField)
        view.setupView(calculateButton)
        view.setupView(resultContainer)
        view.setupView(bodyFatRateLabel)
        view.setupView(resultButton)
        configureGenderDropdown()
    }
    
    override func constraintViews() {
        
        let stackViewLeft = UIStackView(arrangedSubviews: [heightTextField, neckTextField])
        stackViewLeft.axis = .vertical
        stackViewLeft.spacing = 26
        view.setupView(stackViewLeft)
        
        let stackViewRight = UIStackView(arrangedSubviews: [weightTextField, waistTextField])
        stackViewRight.axis = .vertical
        stackViewRight.spacing = 26
        view.setupView(stackViewRight)
        
        resultContainer.addSubview(bodyFatRateLabel)
        
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
            
            bodyFatRateLabel.centerXAnchor.constraint(equalTo: resultContainer.centerXAnchor),
            bodyFatRateLabel.centerYAnchor.constraint(equalTo: resultContainer.centerYAnchor),
            
            resultButton.topAnchor.constraint(equalTo: resultContainer.bottomAnchor, constant: 42),
            resultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    //MARK: -ACTIONS
    
    @objc func dismissPicker() {
        view.endEditing(true)
    }
    
    @objc func handleCalculate() {
        
        let height = Double(heightTextField.text!)
        let waist = Double(waistTextField.text!)
        let neck = Double(neckTextField.text!)
        
        
        if waistTextField.text?.isEmpty == false && genderTextField.text?.isEmpty == false && heightTextField.text?.isEmpty == false && weightTextField.text?.isEmpty == false && neckTextField.text?.isEmpty == false {
            
            if genderTextField.text == "Male" {
                let bodyFat = 10.1 - (0.239 * height!) + (0.8 * waist!) - (0.5 * neck!)
                bodyFatRateLabel.text = "%\(Int(bodyFat))"
            }else {
                let bodyFat = 19.2 - (0.239 * height!) + (0.8 * waist!) - (0.5 * neck!)
                bodyFatRateLabel.text = "%\(Int(bodyFat))"
            }
        } else {
            showMessage()
        }
    }
    
    @objc func handleResultButton(){
        present(FatRateDetailController(), animated: true, completion: nil)
    }
    
    //MARK: -HELPERS
    func createToolbar() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.dismissPicker))
        toolBar.setItems([doneButton], animated: false)
        
        toolBar.isUserInteractionEnabled = true
        genderTextField.inputAccessoryView = toolBar
    }
    
    func configureGenderDropdown(){
        let pickerView = UIPickerView()
        pickerView.tag = 2
        pickerView.delegate = self
        genderTextField.inputView = pickerView
        createToolbar()
    }
}

//MARK: -UIPickerViewDataSource

extension FatRateController : UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genders.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genders[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        return genderTextField.text = genders[row]
    }
}

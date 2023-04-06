//
//  FatRateController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 17.02.23.
//

import UIKit

final class FatRateController: GTBaseViewController, UIPickerViewDelegate {
    
    private let genders = ResCalories.String.Picker.genders
    
    private let primaryView = FatRateView()

//MARK: -LIFECYCLE
    
    override func setupViews() {
        super.setupViews()
        title = ResCalories.String.Title.caloriesNeed
        
        view.addSubviews(primaryView)

        configureGenderDropdown()
        buttonAction()
    }
    
    override func constraintViews() {
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.topAnchor),
            primaryView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            primaryView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
//MARK: - BUTTONS TARGET
    
    private func buttonAction() {
        primaryView.resultButton.addTarget(self, action: #selector(handleResultButton), for: .touchUpInside)
        primaryView.calculateButton.addTarget(self, action: #selector(handleCalculate), for: .touchUpInside)
    }
    
    @objc private func dismissPicker() {
        view.endEditing(true)
    }
    
    @objc private func handleCalculate() {
        
        let height = Double(primaryView.heightTextField.text!)
        let waist = Double(primaryView.waistTextField.text!)
        let neck = Double(primaryView.neckTextField.text!)
        
        
        if primaryView.waistTextField.text?.isEmpty == false && primaryView.genderTextField.text?.isEmpty == false && primaryView.heightTextField.text?.isEmpty == false && primaryView.weightTextField.text?.isEmpty == false && primaryView.neckTextField.text?.isEmpty == false {
            
            if primaryView.genderTextField.text == "Male" {
                let bodyFat = 10.1 - (0.239 * height!) + (0.8 * waist!) - (0.5 * neck!)
                primaryView.bodyFatRateLabel.text = "%\(Int(bodyFat))"
            }else {
                let bodyFat = 19.2 - (0.239 * height!) + (0.8 * waist!) - (0.5 * neck!)
                primaryView.bodyFatRateLabel.text = "%\(Int(bodyFat))"
            }
        } else {
            showMessage()
        }
    }
    
    @objc private func handleResultButton(){
        present(FatRateDetailController(), animated: true, completion: nil)
    }
    
    //MARK: -HELPERS
    private func createToolbar() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.dismissPicker))
        toolBar.setItems([doneButton], animated: false)
        
        toolBar.isUserInteractionEnabled = true
        primaryView.genderTextField.inputAccessoryView = toolBar
    }
    
    private func configureGenderDropdown(){
        let pickerView = UIPickerView()
        pickerView.tag = 2
        pickerView.delegate = self
        primaryView.genderTextField.inputView = pickerView
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
        return primaryView.genderTextField.text = genders[row]
    }
}

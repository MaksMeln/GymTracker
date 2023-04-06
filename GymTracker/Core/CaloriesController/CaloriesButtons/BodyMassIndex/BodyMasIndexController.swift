//
//  BodyMasIndexController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 17.02.23.
//

import UIKit

final class BodyMassIndexController: GTBaseViewController {
    

    private let primaryView = BodyMassIndexView()
    
//MARK: - LyfeCycle
    override func setupViews() {
        super.setupViews()
        title = ResCalories.String.Title.bodyMassIndex
        
        view.addSubviews(primaryView)
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
    
    @objc private func handleCalculate() {
        let height = Double(primaryView.heightTextField.text!)
        let weight = Double(primaryView.weightTextField.text!)
        
        if primaryView.heightTextField.text?.isEmpty == false && primaryView.weightTextField.text?.isEmpty == false {
       
             let bodyMassIndex = (weight!) / ((height! / 100) * (height! / 100))
            primaryView.bodyMassIndexLabel.text = "\(String(Int(bodyMassIndex)))kg/m2"
        } else {
            showMessage()
        }
    }
    
    @objc private func handleResultButton(){
        present(BodyMassIndexDetailController(), animated: true, completion: nil)
    }
}

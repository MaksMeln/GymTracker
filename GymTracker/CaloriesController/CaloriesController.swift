//
//  CaloriesController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 20.01.23.
//

import UIKit

class CaloriesController : GTBaseController {
    
//MARK: - PROPERTIES
    private let caloriesCalcuationLabel = UILabel(text: ResCalories.String.Labels.caloriesCalcuation,
                                                  font: Resourses.Fonts.helveticaBold(with: 19),
                                                  textColor: Resourses.Colors.defaultColor)
    
    private var caloriesNeedButton : CaloriesButton = {
        let button = CaloriesButton(with: .caloriesControllerButton)
        button.setInfo(ResCalories.String.Buttons.caloriesNeed, ResCalories.Images.caloriesNeed)
        button.addTarget(self, action: #selector(openCaloriesNeedButton), for: .touchUpInside)
        return button
     }()
    
    private var bodyMassIndexButton : CaloriesButton = {
        let button = CaloriesButton(with: .caloriesControllerButton)
        button.setInfo(ResCalories.String.Buttons.bodyMassIndex, ResCalories.Images.bodyMassIndex)
        button.addTarget(self, action: #selector(openBodyMassIndexButton), for: .touchUpInside)
        return button
     }()
    private var fatRateButton : CaloriesButton = {
        let button = CaloriesButton(with: .caloriesControllerButton)
        button.setInfo(ResCalories.String.Buttons.fatRate, ResCalories.Images.fatRate)
        button.addTarget(self, action: #selector(openFatRateButton), for: .touchUpInside)
        return button
     }()
    private var foodsCaloriesButton : CaloriesButton = {
        let button = CaloriesButton(with: .caloriesControllerButton)
        button.setInfo(ResCalories.String.Buttons.foodsCalories, ResCalories.Images.foodsCalories)
        button.addTarget(self, action: #selector(openFoodsCaloriesButton), for: .touchUpInside)
        return button
     }()
    
}

//MARK: -  LIFECYCLE
extension CaloriesController {
        
    override func setupViews() {
        super.setupViews()
      
        view.setupView(caloriesCalcuationLabel)
        view.setupView(caloriesNeedButton)
        view.setupView(bodyMassIndexButton)
        view.setupView(fatRateButton)
        view.setupView(foodsCaloriesButton)
    }
    
    override func configureAppearence() {
        title = Resourses.Strings.TabBar.title(for: .calories)
        navigationController?.navigationBar.addBottomBorder()
    }
    
    override func constraintViews() {
        
        NSLayoutConstraint.activate([
            
            caloriesCalcuationLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 31),
            caloriesCalcuationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        
            caloriesNeedButton.topAnchor.constraint(equalTo: caloriesCalcuationLabel.bottomAnchor, constant: 31),
            caloriesNeedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            bodyMassIndexButton.topAnchor.constraint(equalTo: caloriesNeedButton.bottomAnchor, constant: 31),
            bodyMassIndexButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            fatRateButton.topAnchor.constraint(equalTo: bodyMassIndexButton.bottomAnchor, constant: 31),
            fatRateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            foodsCaloriesButton.topAnchor.constraint(equalTo: fatRateButton.bottomAnchor, constant: 31),
            foodsCaloriesButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    //MARK: - HELPERS FUNCTION
    @objc func openCaloriesNeedButton() {
        let vc = CaloriesNeedController()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func openBodyMassIndexButton() {
        let vc = BodyMassIndexController()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func openFatRateButton() {
        let vc = FatRateController()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func openFoodsCaloriesButton() {
        let vc = FoodsCaloriesController()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
}

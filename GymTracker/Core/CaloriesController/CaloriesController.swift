//
//  CaloriesController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 20.01.23.
//

import UIKit

/// Сalorie Counting class 
final class CaloriesController : GTBaseViewController {
    
    private let primaryView = CaloriesView()
    
    
    // MARK: - Lifecycle
    override func setupViews() {
        super.setupViews()
        view.addSubviews(primaryView)
        buttonsTarget()
    }
    
    override func configureAppearence() {
        title = Resourses.Strings.TabBar.title(for: .calories)
        navigationController?.navigationBar.addBottomBorder()
    }
    
    override func constraintViews() {
        NSLayoutConstraint.activate([
            
            primaryView.topAnchor.constraint(equalTo: view.topAnchor),
            primaryView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            primaryView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func buttonsTarget() {
        primaryView.caloriesNeedButton.addTarget(self, action: #selector(openCaloriesNeedButton), for: .touchUpInside)
        primaryView.bodyMassIndexButton.addTarget(self, action: #selector(openBodyMassIndexButton), for: .touchUpInside)
        primaryView.fatRateButton.addTarget(self, action: #selector(openFatRateButton), for: .touchUpInside)
        primaryView.foodsCaloriesButton.addTarget(self, action: #selector(openFoodsCaloriesButton), for: .touchUpInside)
    }
    
    //MARK: - BUTTON TARGET
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

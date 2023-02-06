//
//  NavBarControllers.swift
//  GymTracker
//
//  Created by Максим Мельничук on 20.01.23.
//

import UIKit

class NavBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureAppearance()
        
        
    }
    

    private func configureAppearance() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
        .foregroundColor: Resourses.Color.defaultColor,
        .font: Resourses.Fonts.helveticaRegular(with: 22)
        ]
    }
}

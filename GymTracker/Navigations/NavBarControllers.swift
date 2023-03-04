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
        .foregroundColor: Resourses.Colors.defaultColor,
        .font: Resourses.Fonts.helveticaRegular(with: 18)
        ]
        
//        navigationBar.addBottomBorder(with: Resourses.Colors.separator, height: 0.5)
    }
}

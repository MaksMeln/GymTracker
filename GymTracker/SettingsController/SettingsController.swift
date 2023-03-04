//
//  SettingsController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 20.01.23.
//

import UIKit

class SettingsController:  GTBaseController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resourses.Strings.TabBar.title(for: .settings)
        navigationController?.navigationBar.addBottomBorder()
        
    }
    
}

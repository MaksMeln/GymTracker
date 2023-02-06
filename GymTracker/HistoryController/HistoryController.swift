//
//  HistoryController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 20.01.23.
//

import UIKit

class HistoryController :  BaseController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resourses.Strings.NavBar.history
        addNavBarButton(at: Position.right, with: "Календарь")
    }
    
}

//
//  TabBarController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 19.01.23.
//

import UIKit

enum Tabs : Int , CaseIterable{
    case userInfo
    case calories
    case startWorkout
    case exercise
    case settings
}

class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configureTabBar()
        switchTo(tab: .startWorkout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func switchTo(tab : Tabs) {
        selectedIndex = tab.rawValue
    }

    
   private func configureTabBar() {
        tabBar.tintColor = Resourses.Colors.activeTabBar
        tabBar.barTintColor = Resourses.Colors.inactive
        tabBar.backgroundColor = Resourses.Colors.tabBar
        tabBar.layer.borderColor = Resourses.Colors.separator.cgColor
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.masksToBounds = true
        tabBar.itemPositioning = .fill
        
        if #available(iOS 15.0, *) {
               let appearance = UITabBarAppearance()
               appearance.configureWithOpaqueBackground()
               appearance.backgroundColor = Resourses.Colors.tabBar
               UITabBar.appearance().standardAppearance = appearance
               UITabBar.appearance().scrollEdgeAppearance = UITabBar.appearance().standardAppearance
           }
       
        let controllers : [NavBarController] = Tabs.allCases.map { tab in
            let controller = NavBarController(rootViewController: getController(for: tab))
            controller.tabBarItem = UITabBarItem(title: Resourses.Strings.TabBar.title(for: tab) ,
                                                 image: Resourses.Images.TabBar.icon(for: tab),
                                                 tag: tab.rawValue)
            return controller
        }
        setViewControllers(controllers, animated: false)
    }
        
        private func getController(for tab: Tabs) -> GTBaseViewController {
            switch tab {
            case .userInfo:  return UserInfoController()
            case .calories: return CaloriesController()
            case .startWorkout: return StartWorkoutController()
            case .exercise:  return ExerciseController()
            case .settings: return SettingsController()

        }
    }
}
   

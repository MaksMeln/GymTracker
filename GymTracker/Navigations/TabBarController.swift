//
//  TabBarController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 19.01.23.
//

import UIKit

enum Tabs : Int {
    case userInfo
    case history
    case startTraining
    case exercise
    case settings
}

class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configureTabBar()
        switchTo(tab: .exercise)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func switchTo(tab : Tabs) {
        selectedIndex = tab.rawValue
    }

    
    func configureTabBar() {
        tabBar.tintColor = Resourses.Color.activeTabBar
        tabBar.barTintColor = Resourses.Color.inactive
        tabBar.backgroundColor = Resourses.Color.tabBar
        tabBar.layer.borderColor = Resourses.Color.separator.cgColor
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.masksToBounds = true
        
        if #available(iOS 15.0, *) {
               let appearance = UITabBarAppearance()
               appearance.configureWithOpaqueBackground()
               appearance.backgroundColor = Resourses.Color.tabBar
               UITabBar.appearance().standardAppearance = appearance
               UITabBar.appearance().scrollEdgeAppearance = UITabBar.appearance().standardAppearance
           }
       
        
        let userInfoController = UserInfoController()
        let historyController = HistoryController()
        let startTrainingController = StartTrainingController()
        let exerciseController = ExerciseController()
        let settingsController = SettingsController()
        
        let userInfoNavigation = NavBarController(rootViewController: userInfoController)
        let historyNavigation = NavBarController(rootViewController: historyController)
        let startTrainingNavigation = NavBarController(rootViewController: startTrainingController)
        let exerciseNavigation = NavBarController(rootViewController: exerciseController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        
        userInfoNavigation.tabBarItem = UITabBarItem(title: Resourses.Strings.TabBar.userInfo,
                                                     image: Resourses.Images.TabBar.userInfo,
                                                     tag: Tabs.userInfo.rawValue)
        historyNavigation.tabBarItem = UITabBarItem(title: Resourses.Strings.TabBar.history,
                                                    image: Resourses.Images.TabBar.history,
                                                    tag: Tabs.history.rawValue)
        
        startTrainingNavigation.tabBarItem = UITabBarItem(title: Resourses.Strings.TabBar.startTraining,
                                                          image: Resourses.Images.TabBar.startTraining,
                                                          tag: Tabs.startTraining.rawValue)
        
        exerciseNavigation.tabBarItem = UITabBarItem(title: Resourses.Strings.TabBar.exercise,
                                                     image: Resourses.Images.TabBar.exercise,
                                                     tag: Tabs.exercise.rawValue)
        
        settingsNavigation.tabBarItem = UITabBarItem(title: Resourses.Strings.TabBar.settings,
                                                     image: Resourses.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
     
        
        setViewControllers([
            userInfoNavigation,
            historyNavigation,
            startTrainingNavigation,
            exerciseNavigation,
            settingsNavigation
        ], animated: false)
    }
    
}

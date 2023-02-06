//
//  SceneDelegate.swift
//  GymTracker
//
//  Created by Максим Мельничук on 19.01.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScence = (scene as? UIWindowScene) else { return }
    
        let tabBarController = TabBarController()
        
        window = UIWindow(frame: windowScence.screen.bounds)
        window?.windowScene = windowScence
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }

    
    
}

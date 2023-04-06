//
//  GTBaseViewController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 19.01.23.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class GTBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        constraintViews()
        configureAppearence()
    }
}

@objc extension GTBaseViewController {
    
    func setupViews() {}
    func constraintViews() {}
    func configureAppearence() {
        view.backgroundColor = Resourses.Colors.backgroundColor
    }
    
    func leftBarButtonTapped() {
        print("left button tapped")
    }
    
    func rightBarButtonTapped() {
        print("")
    }
    
}


extension GTBaseViewController {
    
    func addNavBarButton(at position:NavBarPosition , with tittle: String) {
        let button = UIButton(type: .system)
        button.setTitle(tittle, for: .normal)
        button.setTitleColor(Resourses.Colors.active, for: .normal)
        button.setTitleColor(Resourses.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resourses.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(leftBarButtonTapped), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(rightBarButtonTapped), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
    
    func addNavBarButtonImage(at position:NavBarPosition , with image: UIImage) {
        let button = UIButton(type: .system)
        button.setImage(image, for: .normal)
            
        switch position {
        case .left:
            button.addTarget(self, action: #selector(leftBarButtonTapped), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(rightBarButtonTapped), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
    
}


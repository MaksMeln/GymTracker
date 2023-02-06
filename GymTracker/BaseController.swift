//
//  ViewController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 19.01.23.
//

import UIKit

enum Position {
    case left
    case right
}

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    configure()
        
    }
    
}

@objc extension BaseController {
    func configure() {
        
        view.backgroundColor = Resourses.Color.backgroundColor
//        view.backgroundColor = .red
    }
    
    func leftBarButtonTapped() {
        print("left button tapped")
    }
    
    func rightBarButtonTapped() {
        print("left button tapped")
    }
    
}


extension BaseController {
    
    func addNavBarButton(at position:Position , with tittle: String) {
        let button = UIButton(type: .system)
        button.setTitle(tittle, for: .normal)
        button.setTitleColor(Resourses.Color.activeButton, for: .normal)
        button.setTitleColor(Resourses.Color.inactive, for: .disabled)
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
    
}


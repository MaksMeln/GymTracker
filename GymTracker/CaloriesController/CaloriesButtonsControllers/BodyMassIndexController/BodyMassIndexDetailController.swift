//
//  BodyMassIndexDetailController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 18.02.23.
//

import UIKit

class BodyMassIndexDetailController : GTBaseController {
    
    
    //MARK: - PROPERTIES
    private let infoLabel = UILabel(text: ResCalories.String.Labels.bodyMassIndexDetail,
                                    font: UIFont.boldSystemFont(ofSize: 18),
                                    textColor: Resourses.Colors.defaultColor)
    
    private let image : UIImageView = {
        let imageView = UIImageView()
        imageView.image = ResCalories.Images.bodyMassIndexDetail
        imageView.setDimensions(height: 440, width: 310)
         return imageView
    }()
    
    //MARK: - LIFECYCLE
    override func setupViews() {
        super.setupViews()
        view.setupView(infoLabel)
        view.setupView(image)
    }

    override func constraintViews() {
        NSLayoutConstraint.activate([
                
            infoLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 36),
            infoLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor)
          ])
    }
    
    override func configureAppearence() {
        view.backgroundColor = .darkGray
    }
}

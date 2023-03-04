//
//  FatRateDetailController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 18.02.23.
//

import UIKit

class FatRateDetailController : GTBaseController {
    
    private let infoLabel = UILabel(text: ResCalories.String.Labels.fatRateDetail,
                                    font: UIFont.boldSystemFont(ofSize: 18),
                                    textColor: Resourses.Colors.defaultColor)
    
    private let image : UIImageView = {
        let imageView = UIImageView()
        imageView.image = ResCalories.Images.fatRateDetail
        imageView.setDimensions(height: 300, width: 350)
         return imageView
    }()
        
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
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
          ])
    }
    
    override func configureAppearence() {
        view.backgroundColor = .darkGray
    }
}

//
//  BodyMassIndexDetailView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 6.04.23.
//

import UIKit

/// View of Image with BodyMassIndex
final class BodyMassIndexDetailView: UIView {
    
//MARK: - PROPERTIES
    public let infoLabel = GTLabel(text: ResCalories.String.Labels.bodyMassIndexDetail,
                                    font: UIFont.boldSystemFont(ofSize: 18),
                                    textColor: Resourses.Colors.defaultColor)
    
    public let image = GTImageView(image: ResCalories.Images.bodyMassIndexDetail)

//MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews(infoLabel, image )
        constraintViews()
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

//MARK: - ConstrintViews
   private func constraintViews() {
        image.setDimensions(height: 440, width: 310)
        NSLayoutConstraint.activate([
                
            infoLabel.topAnchor.constraint(equalTo: topAnchor),
            infoLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.centerYAnchor.constraint(equalTo: centerYAnchor)
          ])
    }
}

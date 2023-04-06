//
//  GTYouTubeButton.swift
//  GymTracker
//
//  Created by Максим Мельничук on 4.03.23.
//

import UIKit


final class GTYouTubeButton : UIButton {
 
//MARK: - PROPERTIES
    private var subtitleYouTube = GTLabel(text: ResExerciseInfo.subtitleYouTubeLabel,
                                          font: Resourses.Fonts.helveticaBold(with: 15),
                                          textColor: Resourses.Colors.defaultColor)
    
    private var label = GTLabel(text: ResExerciseInfo.youTubeLabel,
                                font: Resourses.Fonts.helveticaBold(with: 30),
                                textColor: Resourses.Colors.defaultColor)
    
    private let iconView = UIImageView(image: Resourses.Images.youTubeButton)
    
//MARK: - Init
    init() {
        super.init(frame: .zero)

        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        fatalError()
    }
}

//MARK: - SetupViews
private extension GTYouTubeButton {
    
    func setupViews() {
        
        addSubviews(label, subtitleYouTube, iconView)
    }
    
//MARK: - CONSTRAINTVIEWS
    func constraintViews() {
        
        setDimensions(height: 75, width: 233)
        iconView.setDimensions(height: 46, width: 46)
        
        NSLayoutConstraint.activate([
            
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
    
            subtitleYouTube.topAnchor.constraint(equalTo: topAnchor, constant: 9),
            subtitleYouTube.leadingAnchor.constraint(equalTo: iconView.trailingAnchor, constant: 41),
            
            label.centerXAnchor.constraint(equalTo: subtitleYouTube.centerXAnchor),
            label.topAnchor.constraint(equalTo: subtitleYouTube.bottomAnchor, constant: 0),
        ])
    }
    
    //MARK: - CONFIGUREAPPEARANCE
    func configureAppearance() {
        backgroundColor = Resourses.Colors.buttonYouTubeBackground
        layer.borderWidth = 2
        layer.borderColor = Resourses.Colors.borderColor.cgColor
        layer.cornerRadius = 10
        iconView.tintColor = Resourses.Colors.active
        makeSystem(self)
    }
}

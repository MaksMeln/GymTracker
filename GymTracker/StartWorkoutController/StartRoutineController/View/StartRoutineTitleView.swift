//
//  StartRoutineTitleView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 23.02.23.
//

import UIKit

class StartRoutineTitleView : GTBaseView {
    
private let volumeLabel = UILabel(text: ResStartWorkout.String.Labels.volume,
                                  font: Resourses.Fonts.helveticaRegular(with: 11),
                                  textColor: Resourses.Colors.startWorkoutLabel)

private let volumeSubtitleLabel = UILabel(text: "0",
                                  font: Resourses.Fonts.helveticaRegular(with: 16),
                                  textColor: Resourses.Colors.defaultColor)
    
private let setsLabel = UILabel(text: ResStartWorkout.String.Labels.sets,
                                  font: Resourses.Fonts.helveticaRegular(with: 11),
                                  textColor: Resourses.Colors.startWorkoutLabel)

private let setsSubtitleLabel = UILabel(text: "0" + ResStartWorkout.String.Labels.kg,
                                    font: Resourses.Fonts.helveticaRegular(with: 16),
                                    textColor: Resourses.Colors.defaultColor)
    
    
    var volumeStackView : UIStackView = {
        let stack = UIStackView()
        stack.alignment = .center
        stack.axis = .vertical
        stack.spacing = 7
        return stack
    }()
    
    var setsStackView : UIStackView =  {
        let stack = UIStackView()
        stack.alignment = .center
        stack.axis = .vertical
        stack.spacing = 7
        return stack
    }()
    
    var stackView : UIStackView =  {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 93
        return stack
    }()
}
 
extension StartRoutineTitleView {
    
override func setupView(_ view: UIView) {
    super.setupView(view)
    
    setupView(stackView)
    
    stackView.addArrangedSubview(volumeStackView)
    stackView.addArrangedSubview(setsStackView)
    
    }
    
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
        
//            stackView.topAnchor.constraint(equalTo: topAnchor),
//            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
  
//            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
//            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        volumeStackView = UIStackView(arrangedSubviews: [volumeLabel, volumeSubtitleLabel])
        setsStackView = UIStackView(arrangedSubviews: [setsLabel, setsSubtitleLabel])
    }
}


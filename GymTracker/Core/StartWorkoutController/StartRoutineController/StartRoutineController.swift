//
//  StartRoutineController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 23.02.23.
//

import UIKit

final class StartRoutineController : GTBaseViewController {
    
   
    private let titleStackView = StartRoutineTitleView()
    
private let volumeLabel = GTLabel(text: ResStartWorkout.String.Labels.volume,
                                  font: Resourses.Fonts.helveticaRegular(with: 11),
                                  textColor: Resourses.Colors.startWorkoutLabel)

private let volumeSubtitleLabel = GTLabel(text: "0" + ResStartWorkout.String.Labels.kg,
                                  font: Resourses.Fonts.helveticaRegular(with: 16),
                                  textColor: Resourses.Colors.defaultColor)
    
private let setsLabel = GTLabel(text: ResStartWorkout.String.Labels.sets,
                                  font: Resourses.Fonts.helveticaRegular(with: 11),
                                  textColor: Resourses.Colors.startWorkoutLabel)

private let setsSubtitleLabel = GTLabel(text: "0",
                                    font: Resourses.Fonts.helveticaRegular(with: 16),
                                    textColor: Resourses.Colors.defaultColor)


}

//MARK: - LIFECYCLE
extension StartRoutineController {
    
    override func setupViews() {
        super.setupViews()
        title = ResStartWorkout.String.Title.startRoutine
        navigationController?.navigationBar.addBottomBorder()
        
        view.addSubviews(titleStackView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
//            let volumeStackView = UIStackView(arrangedSubviews: [volumeLabel, volumeSubtitleLabel])
//            volumeStackView.alignment = .center
//            volumeStackView.axis = .vertical
//            volumeStackView.spacing = 7
//            volumeStackView.translatesAutoresizingMaskIntoConstraints = false
//
//
//            let setsStackView = UIStackView(arrangedSubviews: [setsLabel, setsSubtitleLabel])
//            setsStackView.alignment = .center
//            setsStackView.axis = .vertical
//            setsStackView.spacing = 7
//            setsStackView.translatesAutoresizingMaskIntoConstraints = false
//
//            let titleStackView = UIStackView(arrangedSubviews: [volumeStackView, setsStackView])
//            titleStackView.axis = .horizontal
//            titleStackView.spacing = 93
//            titleStackView.translatesAutoresizingMaskIntoConstraints = false
//            view.setupView(titleStackView)
            
            NSLayoutConstraint.activate([
            
//                titleStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 18),
                titleStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                titleStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
    
    override func configureAppearence() {
        super.configureAppearence()
        
          
    }
}

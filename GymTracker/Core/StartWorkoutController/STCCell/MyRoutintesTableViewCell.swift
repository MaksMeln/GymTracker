//
//  MyRoutintesTableViewCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 11.02.23.
//

import UIKit


final class MyRoutintesTableViewCell : UITableViewCell {
    
//MARK: - PROPERTIES
    let routinesTileLabel =  GTLabel(text: "Monday",
                                     font: Resourses.Fonts.helveticaBold(with: 19),
                                     textColor: Resourses.Colors.defaultColor)
    
    let routinesExerciseLabel = GTLabel(text: "Preacher Curl (Barbell), Seated incline Curl re Preacher Curl (Barbell), Seated incline Curl",
                                        font:  Resourses.Fonts.helveticaRegular(with: 17),
                                        textColor: Resourses.Colors.inactive)

    
    let startRoutineButton : GTStartWorkoutButton = {
        let button = GTStartWorkoutButton(with: .startRoutineExerise)
        button.setTitle(ResStartWorkout.String.Buttons.startRoutine, for: .normal)
        button.addTarget(self, action: #selector(startRoutineButtonTapped), for: .touchUpInside)
        return button
    }()
    
    let moreInfoButton : UIButton = {
       let button = UIButton()
        button.setImage(ResStartWorkout.Images.moreInfoHorizontal, for: .normal)
        button.widthAnchor.constraint(equalToConstant: 19).isActive = true
        button.heightAnchor.constraint(equalToConstant: 4.6).isActive = true
        return button
    }()

    
    weak var startRoutineDelegate: PressButton?
    var index: IndexPath?
    
//MARK: - LIFECYCLE
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubviews(routinesTileLabel, routinesExerciseLabel)
        contentView.addSubviews(startRoutineButton)
        contentView.addSubviews(moreInfoButton)
        constraintViews()
        
        self.selectionStyle = .none
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - CONSTRAINTSVIEWS
    func constraintViews() {
        NSLayoutConstraint.activate([
        
            routinesTileLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 18),
            routinesTileLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            
            routinesExerciseLabel.topAnchor.constraint(equalTo: routinesTileLabel.bottomAnchor,constant: 15),
            routinesExerciseLabel.leadingAnchor.constraint(equalTo: routinesTileLabel.leadingAnchor),
            routinesExerciseLabel.widthAnchor.constraint(equalToConstant: 295),
            routinesExerciseLabel.heightAnchor.constraint(equalToConstant: 41),
            
            startRoutineButton.topAnchor.constraint(equalTo: routinesExerciseLabel.bottomAnchor, constant: 15),
            startRoutineButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            moreInfoButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 26),
            moreInfoButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -19 )
        ])
    }
    
    @objc func startRoutineButtonTapped() {
        guard let index = index else {return}
        startRoutineDelegate?.buttonPress(indexPath: index)
    }
}

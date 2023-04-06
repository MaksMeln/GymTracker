//
//  NewRoutineTableViewCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 3.03.23.
//

import UIKit

var numberOfSet = 1

final class NewRoutineTableViewCell : UITableViewCell {
    
    
// MARK: - PROPERTIES
    var exerciseImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = ResExerciseTable.ExImage.Biceps.biceps_1
        imageView.setDimensions(height: 40, width: 40)
        return imageView
    }()
    
    var exerciseTitleLabel = GTLabel(text: "Biceps",
                                     font: Resourses.Fonts.helveticaBold(with: 17),
                                     textColor: Resourses.Colors.active)
    
    private let moreButton : UIButton = {
       let button = UIButton()
        button.setImage(ResStartWorkout.Images.moreInfoVertical, for: .normal)
        button.setDimensions(height: 20, width: 4)
        return button
    }()
    
    private var routineNotes = GTTextField(placeholder: ResStartWorkout.String.Placecholder.addRoutinesNotes,
                                           font: Resourses.Fonts.helveticaRegular(with: 15),
                                           textColor: Resourses.Colors.defaultColor,
                                           keyboardType: .default)
  

    private let setsLabel = GTLabel(text: ResStartWorkout.String.Labels.set,
                                        font: Resourses.Fonts.helveticaRegular(with: 16),
                                        textColor: Resourses.Colors.startWorkoutLabel)
    
    private var setsNumber = GTLabel(text: String(numberOfSet),
                                     font: Resourses.Fonts.helveticaBold(with: 15),
                                     textColor: Resourses.Colors.defaultColor)
    
    private let kilogramLabel = GTLabel(text: ResStartWorkout.String.Labels.kg,
                                        font: Resourses.Fonts.helveticaRegular(with: 16),
                                        textColor: Resourses.Colors.startWorkoutLabel)
    
    
    private let kilogramNumber = GTTextField(placeholder: "-",
                                             font: Resourses.Fonts.helveticaRegular(with: 15),
                                             textColor: Resourses.Colors.defaultColor,
                                             keyboardType: .numberPad)
    
    private let repsLabel = GTLabel(text: ResStartWorkout.String.Labels.reps,
                                        font: Resourses.Fonts.helveticaRegular(with: 16),
                                    textColor: Resourses.Colors.startWorkoutLabel)
    
    
    private let repsNumber = GTTextField(placeholder: "-",
                                         font: Resourses.Fonts.helveticaRegular(with: 15),
                                         textColor: Resourses.Colors.defaultColor,
                                         keyboardType: .numberPad)
    
    private let addSetButton : GTStartWorkoutButton = {
        let button = GTStartWorkoutButton(with: .addSet)
        button.setInfo("+ Add Set", nil)
        button.addTarget(self, action: #selector(addSetButtonTapped), for: .touchUpInside)
        return button
    }()
    
    weak var addSetButtonDelegate: PressButton?
    var index: IndexPath?

//MARK: - LIFECYCLE
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       
        
        addSubviews(exerciseImageView, exerciseTitleLabel, routineNotes, setsNumber, moreButton)
        
        contentView.addSubviews(addSetButton)
        
        constraintViews()
        
        selectionStyle = .none
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - CONSTRAINTVIEWS
    func constraintViews() {
        
        let stackViewLabel = UIStackView(arrangedSubviews: [setsLabel, kilogramLabel, repsLabel])
        stackViewLabel.axis = .horizontal
        stackViewLabel.spacing = 72
        contentView.addSubviews(stackViewLabel)
        
        let stackViewNumber = UIStackView(arrangedSubviews: [kilogramNumber, repsNumber])
        stackViewNumber.axis = .horizontal
        stackViewNumber.spacing = 120
        contentView.addSubviews(stackViewNumber)
        
        NSLayoutConstraint.activate([
//            contentView.topAnchor.constraint(equalTo: topAnchor),
//            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
//            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            exerciseImageView.topAnchor.constraint(equalTo: topAnchor),
            exerciseImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        
            exerciseTitleLabel.centerYAnchor.constraint(equalTo: exerciseImageView.centerYAnchor),
            exerciseTitleLabel.leadingAnchor.constraint(equalTo: exerciseImageView.trailingAnchor, constant: 10),
            
            moreButton.centerYAnchor.constraint(equalTo: exerciseImageView.centerYAnchor),
            moreButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -29),
            
            routineNotes.topAnchor.constraint(equalTo: exerciseImageView.bottomAnchor, constant: 16),
            routineNotes.leadingAnchor.constraint(equalTo: exerciseImageView.leadingAnchor),
            routineNotes.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            routineNotes.heightAnchor.constraint(equalToConstant: 20),
            
            stackViewLabel.topAnchor.constraint(equalTo: routineNotes.bottomAnchor, constant: 27),
            stackViewLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            setsNumber.topAnchor.constraint(equalTo: stackViewLabel.bottomAnchor, constant: 14),
            setsNumber.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            
            stackViewNumber.topAnchor.constraint(equalTo: stackViewLabel.bottomAnchor, constant: 14),
            stackViewNumber.leadingAnchor.constraint(equalTo: setsNumber.trailingAnchor, constant: 105),
            
            addSetButton.topAnchor.constraint(equalTo: stackViewNumber.bottomAnchor, constant: 42),
            addSetButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
//    func set(exercise: ExerciseList) {
//        exerciseImageView.image = exercise.exerciseImage
//        exerciseTitleLabel.text = exercise.exerciseTitle
//    }
    
    
        
    @objc func addSetButtonTapped() {
        guard let index = index else {return}
        addSetButtonDelegate?.buttonPress(indexPath: index)
        numberOfSet += 1
        print(numberOfSet)
    }
    
}

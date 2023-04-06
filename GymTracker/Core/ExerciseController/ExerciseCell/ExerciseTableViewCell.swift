//
//  ExerciseTableViewCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 23.01.23.
//

import UIKit

final class ExerciseTableViewCell : UITableViewCell {
    
    //MARK: - PROPERTIES
    var exerciseImageView = UIImageView()
    
    var exerciseTitleLabel = GTLabel(text: "",
                                     font: Resourses.Fonts.helveticaRegular(with: 18),
                                     textColor: Resourses.Colors.ExerciseCol.exTitle)
   
    var exersiceGroupedLabel = GTLabel(text: "",
                                       font: Resourses.Fonts.helveticaRegular(with: 17),
                                       textColor: Resourses.Colors.ExerciseCol.exGroped)
    
    //MARK: - LIFECYCLE
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubviews(exerciseImageView, exerciseTitleLabel, exersiceGroupedLabel)
        configureExerciseTable()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureExerciseTable() {
        
        NSLayoutConstraint.activate([
            // imageView
            exerciseImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            exerciseImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
        
            //titleLabel
            exerciseTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 21),
            exerciseTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 87),
            exerciseTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        
            //groupedLabel
            exersiceGroupedLabel.topAnchor.constraint(equalTo: exerciseTitleLabel.bottomAnchor, constant: 11),
            exersiceGroupedLabel.leadingAnchor.constraint(equalTo: exerciseTitleLabel.leadingAnchor),
        ])
    }
    
    func set(exercise: ExerciseList) {
        exerciseImageView.image = exercise.exerciseImage
        exerciseTitleLabel.text = exercise.exerciseTitle
        exersiceGroupedLabel.text = exercise.exerciseGroup
    }
}

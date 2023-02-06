//
//  ExerciseTableViewCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 23.01.23.
//

import UIKit

class ExerciseTableViewCell : UITableViewCell {
    
    var exerciseImageView = UIImageView()
    var exerciseTitleLabel  = UILabel()
    var exersiceGroupedLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(exerciseImageView)
        addSubview(exerciseTitleLabel)
        addSubview(exersiceGroupedLabel)
        configureExerciseTable()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureExerciseTable() {
        
        exerciseImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // configure titleLabel
        exerciseTitleLabel.numberOfLines = 0
        exerciseTitleLabel.adjustsFontSizeToFitWidth = true
        exerciseTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseTitleLabel.textColor = Resourses.Color.ExerciseCol.exTitle
        exerciseTitleLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)

        // configure groupedLabel
        exersiceGroupedLabel.translatesAutoresizingMaskIntoConstraints = false
        exersiceGroupedLabel.textColor = Resourses.Color.ExerciseCol.exGroped
        exersiceGroupedLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        
        NSLayoutConstraint.activate([
            // imageView
            exerciseImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            exerciseImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            exerciseImageView.heightAnchor.constraint(equalToConstant: 50),
            exerciseImageView.widthAnchor.constraint(equalToConstant: 50),
        
            //titleLabel
            exerciseTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            exerciseTitleLabel.leadingAnchor.constraint(equalTo: exerciseImageView.trailingAnchor, constant: 25),
            exerciseTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        
            //groupedLabel
            exersiceGroupedLabel.topAnchor.constraint(equalTo: exerciseTitleLabel.bottomAnchor, constant: 5),
            exersiceGroupedLabel.leadingAnchor.constraint(equalTo: exerciseImageView.trailingAnchor, constant: 25),
            exersiceGroupedLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 12),
            
        ])
    }
    
    func set(exercise: ExerciseTableList) {
        exerciseImageView.image = exercise.exerciseImage
        exerciseTitleLabel.text = exercise.exerciseTitle
        exersiceGroupedLabel.text = exercise.exerciseGroup
    }
    
}

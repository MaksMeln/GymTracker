//
//  ExerciseRoutinesTableViewCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 15.02.23.
//

import UIKit

class ExerciseRoutinesTableViewCell : UITableViewCell {
    
// MARK: - PROPERTIES
    var exerciseImageView = UIImageView()
    
    var exerciseTitleLabel = UILabel(text: "",
                                     font: Resourses.Fonts.helveticaRegular(with: 18),
                                     textColor: Resourses.Colors.ExerciseCol.exTitle)

    var exersiceGroupedLabel = UILabel(text: "",
                                       font: Resourses.Fonts.helveticaRegular(with: 17),
                                       textColor: Resourses.Colors.ExerciseCol.exGroped)

    
    var exerciseInfo : UIButton = {
        let button = UIButton()
        button.setImage(ResStartWorkout.Images.infoExercise, for: .normal)
        return button
    }()
    
    var exerciseInfoBtn : (() -> ())?
   
//MARK: - LIFECYCLE
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView(exerciseImageView)
        setupView(exerciseTitleLabel)
        setupView(exersiceGroupedLabel)
        setupView(exerciseInfo)
        constraintViews()
        
        exerciseInfo.addTarget(self, action: #selector(showExerciseInfoView), for: .touchUpInside)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func showExerciseInfoView() {
        exerciseInfoBtn?()
    }
    
//MARK: - CONSTRAINTVIEWS
    func constraintViews() {
        
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
            
            exerciseInfo.centerYAnchor.constraint(equalTo: centerYAnchor),
            exerciseInfo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            exerciseInfo.widthAnchor.constraint(equalToConstant: 27),
            exerciseInfo.heightAnchor.constraint(equalToConstant: 27),
            
        ])
    }
    
    func set(exercise: ExerciseList) {
        exerciseImageView.image = exercise.exerciseImage
        exerciseTitleLabel.text = exercise.exerciseTitle
        exersiceGroupedLabel.text = exercise.exerciseGroup
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.accessoryType = selected ? .checkmark : .none
    
        
        
        if selected.self == false {
            exerciseInfo.isHidden = false
            
        } else {
            exerciseInfo.isHidden = true
        }
        
    }
    
}

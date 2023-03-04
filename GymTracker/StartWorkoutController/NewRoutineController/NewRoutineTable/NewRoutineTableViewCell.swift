//
//  NewRoutineTableViewCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 3.03.23.
//

import UIKit

class NewRoutineTableViewCell : UITableViewCell {
    
// MARK: - PROPERTIES
    var exerciseImageView = UIImageView()
    
    var exerciseTitleLabel = UILabel(text: "",
                                     font: Resourses.Fonts.helveticaRegular(with: 18),
                                     textColor: Resourses.Colors.ExerciseCol.exTitle)
    
    var routineNotes : UITextField =  {
        var notes = UITextField()
        notes.placeholder = "Add routine notes here"
        notes.borderStyle = .none
        notes.font = Resourses.Fonts.helveticaRegular(with: 14)
        return notes
    }()
    

    private let setsLabel = UILabel(text: "SET",
                                        font: Resourses.Fonts.helveticaRegular(with: 16),
                                        textColor: Resourses.Colors.defaultColor)
    
    private let kilogramLabel = UILabel(text: "KG",
                                        font: Resourses.Fonts.helveticaRegular(with: 16),
                                        textColor: Resourses.Colors.defaultColor)
    
    private let repsLabel = UILabel(text: "REPS",
                                        font: Resourses.Fonts.helveticaRegular(with: 16),
                                        textColor: Resourses.Colors.defaultColor)
    
   
//MARK: - LIFECYCLE
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView(exerciseImageView)
        setupView(exerciseTitleLabel)

        constraintViews()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
            
            
        ])
    }
    
    func set(exercise: ExerciseList) {
        exerciseImageView.image = exercise.exerciseImage
        exerciseTitleLabel.text = exercise.exerciseTitle
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.accessoryType = selected ? .checkmark : .none
    
        
    }
    
}

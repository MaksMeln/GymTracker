//
//  ExerciseDetailViewController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 26.01.23.
//

import UIKit
import SafariServices

final class ExerciseDetailViewController : GTBaseViewController {
    
   
//MARK: - SCROLLVIEW
    private var contentCize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 100)
    }
    
    private lazy var scrollView = GTScrollView(frame: view.bounds,
                                               contentSize: contentCize)
    
    private lazy var contentView = UIView(contentSize: contentCize)
    
//MARK: - PROPERTIES
    public var imageExercise = UIImageView()
    
    private  var instructionLabel = GTLabel(text: ResExerciseInfo.instrucrionLabel,
                                            font: UIFont.systemFont(ofSize: 20),
                                            textColor: Resourses.Colors.defaultColor)

    private let youTubeButton = GTYouTubeButton()
    
    public var instructionTextView = GTLabel(text: "",
                                      font: Resourses.Fonts.helveticaRegular(with: 16),
                                      textColor:  Resourses.Colors.ExerciseCol.exInstrText)
    public var key = ""
}

//MARK: - LIFECYCLE
extension ExerciseDetailViewController {
    override func setupViews() {
        super.setupViews()
        navigationController?.navigationItem.title = ""
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubviews(imageExercise, instructionLabel, instructionTextView, youTubeButton)
        
        youTubeButton.addTarget(self, action: #selector(tapYouTubeButton), for: .touchUpInside)
    }
    
    //MARK: - CONSTRAINTVIEWS
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            imageExercise.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            imageExercise.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50),
            imageExercise.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50),
            imageExercise.heightAnchor.constraint(equalToConstant: 150),
            imageExercise.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            instructionLabel.topAnchor.constraint(equalTo: imageExercise.bottomAnchor, constant: 20),
            instructionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            
            instructionTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor , constant: 15),
            instructionTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor , constant: -15),
            instructionTextView.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 15),
            
            youTubeButton.topAnchor.constraint(equalTo: instructionTextView.bottomAnchor, constant: 50),
            youTubeButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        ])
    }

    @objc private func tapYouTubeButton() {
        guard let url = URL(string: "https://www.youtube.com/watch?v=\(key)") else {return}
        let vc = SFSafariViewController(url: url)
        present(vc, animated: true, completion: nil)
    }
    
   public func set(exercise: ExerciseList) {
        imageExercise.image = exercise.exerciseImageInfo
        key = exercise.youTubeVideoKey
        instructionTextView.text = exercise.exerciseTextInfo
        title = exercise.exerciseTitle
    }
}

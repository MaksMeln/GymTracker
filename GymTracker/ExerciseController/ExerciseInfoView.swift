//
//  ExerciseInfoView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 26.01.23.
//

import UIKit

class ExerciseInfoView : BaseController  {
    
    
    //сделать ссылку на видео в ютуб
    // ссылка на фоне кнопки YouTube
    
    
     var label = UILabel()
     var imageExercise = UIImageView()
     var instructionLabel = UILabel()
     var youTubeButton = UIButton()
     var youTubeLabel = UIButton()
     var instructionTextView : UITextView = {
        let instruction = UITextView()
        instruction.translatesAutoresizingMaskIntoConstraints = false
        instruction.text = " 1. Stand or sit perfectly upright on a workout bench and grab a dumbbell with one hand (avoid going too heavy, especially when starting out).\n2.Holding the dumbbell, lift your arm slightly behind your head with your elbow bent.Extend your elbow until your arm is straight overhead.Perform 10 reps with one arm before switching to the other to round out the set.Keep your core engaged to protect the lower back when the weight is overhead, especially if you’re performing this exercise standing. "
        instruction.font = Resourses.Fonts.helveticaRegular(with: 15)
    return instruction
    }()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        view.backgroundColor = Resourses.Color.backgroundColor
    }
    
    func config() {
        view.addSubview(instructionTextView)
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = Resourses.Fonts.helveticaRegular(with: 20)
        
        view.addSubview(imageExercise)
        imageExercise.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.text = "Инструкции :"
        instructionLabel.font = UIFont.systemFont(ofSize: 18)
        
        view.addSubview(youTubeButton)
        youTubeButton.translatesAutoresizingMaskIntoConstraints = false
        youTubeButton.setImage(Resourses.Images.ExerciseImage.youTubeButton, for: .normal)
        youTubeButton.addTarget(self, action: #selector(tapYouTubeButton(key:)), for: .touchUpInside)
        
        view.addSubview(youTubeLabel)
        youTubeLabel.translatesAutoresizingMaskIntoConstraints = false
        youTubeLabel.setTitle("Смотреть видео", for: .normal)
        youTubeLabel.setTitleColor(.black, for: .normal)
        youTubeLabel.setTitleColor(.blue, for: .highlighted)
        youTubeLabel.addTarget(self, action: #selector(tapYouTubeButton(key:)), for: .touchUpInside)
        
        
        
        NSLayoutConstraint.activate([
            
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            imageExercise.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            imageExercise.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            imageExercise.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            imageExercise.heightAnchor.constraint(equalToConstant: 150),
            imageExercise.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            instructionLabel.topAnchor.constraint(equalTo: imageExercise.bottomAnchor, constant: 20),
            instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
        
            
            instructionTextView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor , constant: 0),
            instructionTextView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor , constant: 0),
            instructionTextView.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 10),
            instructionTextView.bottomAnchor.constraint(equalTo: youTubeButton.topAnchor , constant: -20),
            
            
            youTubeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            youTubeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            youTubeButton.heightAnchor.constraint(equalToConstant: 100),
            youTubeButton.widthAnchor.constraint(equalToConstant: 100),
            
        
            youTubeLabel.leadingAnchor.constraint(equalTo: youTubeButton.trailingAnchor, constant: 20),
            youTubeLabel.centerYAnchor.constraint(equalTo: youTubeButton.centerYAnchor),
            
    
        ])
    }
    
    
    @objc func tapYouTubeButton() {
         let url = URL(string: "https://www.youtube.com/watch?v=97Ip5soTp5M")!
            UIApplication.shared.open(url, options: [:])
    }
    
    
    @objc func tapYouTubeButton(key: String) {
         let url = URL(string: "https://www.youtube.com/watch?v=\(key)")!
            UIApplication.shared.open(url, options: [:])
    }
}



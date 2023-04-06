//
//  NewRoutineViewController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 13.02.23.
//

import UIKit

final class NewRoutineViewController : GTBaseViewController {
    
    //MARK: - PROPERTIES
    var routineTitle : UITextField = {
        
        var title = GTTextField(placeholder: ResStartWorkout.String.Placecholder.title,
                                font: Resourses.Fonts.helveticaRegular(with: 17),
                                textColor: Resourses.Colors.defaultColor,
                                keyboardType: .default)
        title.borderStyle = .roundedRect
       return title
    }()
    
    private let labelExercise : UIImageView = {
        let labelImage = UIImageView()
        labelImage.image = ResStartWorkout.Images.exercise
        return labelImage
    }()
    
    private let subtitleTextLabel : GTLabel = {
        let subtitle = GTLabel(text: ResStartWorkout.String.Placecholder.subtitle,
                               font: Resourses.Fonts.helveticaRegular(with: 15),
                               textColor: Resourses.Colors.inactive)
        subtitle.textAlignment = .center
        return subtitle
    }()
    
    
    private let newRoutineTable : UITableView = {
        let table = UITableView()
        table.register(NewRoutineTableViewCell.self, forCellReuseIdentifier: Resourses.Strings.Cell.tableCell)
        table.rowHeight = 250
        return table
    }()
    
    private let addExerciseButton : GTStartWorkoutButton = {
        let button = GTStartWorkoutButton(with:.addExercise)
        button.setInfo(ResStartWorkout.String.Buttons.addExercise, ResStartWorkout.Images.addExercise)
        button.addTarget(self, action: #selector(showExerciseTable), for: .touchUpInside)
        return button
    }()
    
}

//MARK: - LIFECYCLE
extension NewRoutineViewController {
    
    override func setupViews() {
//        view.addSubviews(, addExerciseButton, newRoutineTable)
        view.addSubviews(routineTitle, newRoutineTable)
        //        view.setupView(subtitleTextLabel)newRoutineTable
    }
    
    @objc func showExerciseTable() {
        let exerciseList = ExerciseRoutinesTableView()
        exerciseList.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(exerciseList, animated: true)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    //MARK: - CONSTRAINTVIEWS
    override func constraintViews() {
        
        NSLayoutConstraint.activate([
            
            routineTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            routineTitle.heightAnchor.constraint(equalToConstant: 70),
            routineTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            routineTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//

            newRoutineTable.topAnchor.constraint(equalTo: routineTitle.bottomAnchor, constant: 20),
            newRoutineTable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newRoutineTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newRoutineTable.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 16),
            
//                        labelExercise.topAnchor.constraint(equalTo: routineTitle.bottomAnchor, constant: 25),
//                        labelExercise.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//                        labelExercise.widthAnchor.constraint(equalToConstant: 26),
//                        labelExercise.heightAnchor.constraint(equalToConstant: 17),
//            
//                        subtitleTextLabel.topAnchor.constraint(equalTo: labelExercise.bottomAnchor, constant: 31),
//                        subtitleTextLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//                        subtitleTextLabel.widthAnchor.constraint(equalToConstant: 270),
//                        subtitleTextLabel.heightAnchor.constraint(equalToConstant: 39),
            
//            addExerciseButton.topAnchor.constraint(equalTo: newRoutineTable.bottomAnchor, constant: 16),
//            addExerciseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        //MARK: - CONFIGUREAPPEREANCE
    }
    override func configureAppearence() {
        title = ResStartWorkout.String.Title.createRoutine
        view.backgroundColor = Resourses.Colors.backgroundColor
        addNavBarButton(at: .right, with: ResStartWorkout.String.Buttons.saveRoutine)
        
        newRoutineTable.delegate = self
        newRoutineTable.dataSource = self
    }
    
    override func rightBarButtonTapped() {
        print("save")
    }
    
}

extension NewRoutineViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Resourses.Strings.Cell.tableCell, for: indexPath) as! NewRoutineTableViewCell
        
        cell.addSetButtonDelegate = self
        cell.index = indexPath
        return cell
    }
}

extension NewRoutineViewController : PressButton {
    func buttonPress(indexPath: IndexPath) {
        print("tap start routine")
    }
}

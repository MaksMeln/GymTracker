//
//  StartWorkoutController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 20.01.23.
//

import UIKit

class StartWorkoutController :  GTBaseController {
    
//MARK: - PROPERTIES
    private let quickStartLabel = UILabel(text: ResStartWorkout.String.Labels.quickStart,
                                          font: Resourses.Fonts.helveticaBold(with: 19),
                                          textColor: Resourses.Colors.defaultColor)
    
    private let routinesLabel = UILabel(text: ResStartWorkout.String.Labels.routines,
                                        font: Resourses.Fonts.helveticaBold(with: 19),
                                        textColor: Resourses.Colors.defaultColor)
    
   private var startEmptyWorkoutButton : StartWorkoutButton = {
       let button = StartWorkoutButton(with: .startEmptyWorkout)
       button.setInfo(ResStartWorkout.String.Buttons.startEmptyWorkout, ResStartWorkout.Images.startEmptyWorkout)
       button.addTarget(self, action: #selector(showstartEmptyWorkoutButton), for: .touchUpInside)
       return button
    }()
    
    private var newRoutineButton : StartWorkoutButton = {
        let button = StartWorkoutButton(with: .newRoutineAndExplore)
        button.setInfo(ResStartWorkout.String.Buttons.newRoutine, ResStartWorkout.Images.newRoutine)
        button.addTarget(self, action: #selector(showNewRoutineButton), for: .touchUpInside)
        return button
    }()
    
    private var exlporeButton : StartWorkoutButton = {
        let button = StartWorkoutButton(with: .newRoutineAndExplore)
        button.setInfo(ResStartWorkout.String.Buttons.explore, ResStartWorkout.Images.explore)
        return button
    }()
    
    private var myRoutinesButton : StartWorkoutButton = {
        let button = StartWorkoutButton(with: .myRoutines)
        button.setInfo(ResStartWorkout.String.Buttons.myRoutines, ResStartWorkout.Images.myRoutines_1)
        button.addTarget(self, action: #selector(showMyRoutinesButton), for: .touchUpInside)
        return button
    }()
    
//MARK: - TABLE
    private var myRoutinesTable : UITableView = {
        let table = UITableView()
        table.register(MyRoutintesTableViewCell.self, forCellReuseIdentifier: Resourses.Strings.Cell.tableCell)
        table.rowHeight = 176
        table.bounces = false
        table.isHidden = true
        return table
    }()
    
}
        
// MARK: - LIFECYCLE
extension StartWorkoutController {
    
    override func setupViews() {
        view.setupView(quickStartLabel)
        view.setupView(startEmptyWorkoutButton)
        view.setupView(routinesLabel)
        view.setupView(newRoutineButton)
        view.setupView(exlporeButton)
        view.setupView(myRoutinesButton)
        view.setupView(myRoutinesTable)
        
        myRoutinesTableConfigure()
    }
    
    override func constraintViews() {
        
        NSLayoutConstraint.activate([
            
            quickStartLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 18),
            quickStartLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 15),
        
            startEmptyWorkoutButton.topAnchor.constraint(equalTo: quickStartLabel.bottomAnchor, constant: 22),
            startEmptyWorkoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            routinesLabel.topAnchor.constraint(equalTo: startEmptyWorkoutButton.bottomAnchor, constant: 22),
            routinesLabel.leadingAnchor.constraint(equalTo: quickStartLabel.leadingAnchor),
            
            newRoutineButton.topAnchor.constraint(equalTo: routinesLabel.bottomAnchor, constant: 22),
            newRoutineButton.leadingAnchor.constraint(equalTo: startEmptyWorkoutButton.leadingAnchor),
            
            exlporeButton.topAnchor.constraint(equalTo: newRoutineButton.topAnchor),
            exlporeButton.leadingAnchor.constraint(equalTo: newRoutineButton.trailingAnchor, constant: 19),
            
            myRoutinesButton.topAnchor.constraint(equalTo: newRoutineButton.bottomAnchor , constant: 20),
            myRoutinesButton.leadingAnchor.constraint(equalTo: newRoutineButton.leadingAnchor),
            
            myRoutinesTable.topAnchor.constraint(equalTo: myRoutinesButton.bottomAnchor, constant: 0),
            myRoutinesTable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myRoutinesTable.widthAnchor.constraint(equalToConstant: 360),
            myRoutinesTable.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
    
    override func configureAppearence() {
        title = Resourses.Strings.TabBar.title(for: .startWorkout)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: nil)
        navigationController?.navigationBar.addBottomBorder()
    }
    
// MARK: - HELPERS FUNCCTION
    func myRoutinesTableConfigure() {
            myRoutinesTable.dataSource = self
            myRoutinesTable.delegate = self
    }
    
    @objc func showMyRoutinesButton() {
        if myRoutinesTable.isHidden == false {
            myRoutinesTable.isHidden = true
            myRoutinesButton.setInfo(ResStartWorkout.String.Buttons.myRoutines, ResStartWorkout.Images.myRoutines_1)
            
        } else if myRoutinesTable.isHidden == true {
            myRoutinesTable.isHidden = false
            myRoutinesButton.setInfo(ResStartWorkout.String.Buttons.myRoutines, ResStartWorkout.Images.myRoutines)
        }
    }
    //MARK:  - BUTTON TARGET
    @objc func showNewRoutineButton() {
        let newRoutine = NewRoutineViewController()
        newRoutine.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(newRoutine, animated: true)
    }
    @objc func showstartEmptyWorkoutButton() {
        let startRoutine = StartRoutineController()
        startRoutine.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(startRoutine, animated: true)
    }
}

// MARK: - TABLE Extension
extension StartWorkoutController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Resourses.Strings.Cell.tableCell, for: indexPath) as! MyRoutintesTableViewCell
        cell.startRoutineDelegate = self
        cell.index = indexPath
        cell.layer.borderColor = Resourses.Colors.borderColor.cgColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 7
        return cell
    }
  
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        header.backgroundColor = view.backgroundColor
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
}
//MARK: - EXTENSION PressButtonStartRoutineProtocol
extension StartWorkoutController : PressButtonStartRoutineProtocol {
    func startExerciseTapped(indexPath: IndexPath) {
        print("tap start routine")
    }
}

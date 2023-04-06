//
//  SettingsController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 20.01.23.
//

import UIKit


var names = ["maks", "sdfds", "fsadf", "FSDAfsdfsaf"]

final class SettingsController:  GTBaseViewController {
    
    var favoriteCricker = [Int: Bool]()
    var tempList = [Int]()
    
    
    private let table : UITableView = {
        let table = UITableView(frame: .zero)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.allowsMultipleSelection = true
        table.allowsSelectionDuringEditing = true
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resourses.Strings.TabBar.title(for: .settings)
        navigationController?.navigationBar.addBottomBorder()
        addNavBarButton(at: .right, with: "Add")
    
        allExercises = fetchData()
        
        view.addSubviews(table)
        table.pin(to: view)
        table.delegate = self
        table.dataSource = self
        
        for i in 0...favoriteCricker.count {
            favoriteCricker[i] == false
        }
        print(favoriteCricker)
    }
    
    override func rightBarButtonTapped() {
        let vc = NewTableViewCo()
        vc.favoriteList = favoriteCricker
        navigationController?.pushViewController(vc, animated: true
        )
    }
}

extension SettingsController :UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allExercises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        let exercise : ExerciseList
        exercise = allExercises[indexPath.row]
        
        cell.textLabel?.text = exercise.exerciseTitle
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        favoriteCricker[indexPath.row] = true
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        favoriteCricker[indexPath.row] = false
    }
}

//
//  ExerciseRoutinesTableView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 15.02.23.
//

import UIKit

class ExerciseRoutinesTableView : GTBaseController {
    
//MARK: - PROPERTIES
    private var table = UITableView(frame: .zero)
    var allExercises = [ExerciseList]() {
        didSet {
            allExercises.sort { $0.exerciseTitle < $1.exerciseTitle }
        }
    }
    
    var selectedExercise = [ExerciseList]()
    
    
    
    
    private var searchController = UISearchController(searchResultsController: nil)
    private var filteredExercises = [ExerciseList]()
    private var searhBarIsEmpty : Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    private var isFiltering : Bool {
        let searchBarScopeIsFiltering = searchController.searchBar.selectedScopeButtonIndex != 0
        return searchController.isActive && (!searhBarIsEmpty || searchBarScopeIsFiltering)
    }
    
    var addExercise : UIButton = {
       let button = UIButton()
        button.setImage(ResStartWorkout.Images.infoExercise, for: .normal)
        button.isHidden = true
        return button
    }()
    
    
//MARK: - LIFECYCLE
    override func setupViews() {
        super.setupViews()
        view.setupView(addExercise)
        
        configureTable()

        allExercises = fetchData()
        configureSearchExercises()
    }
    

//     MARK: - CONFIGURE
    
    override func constraintViews() {
        NSLayoutConstraint.activate([
            
            addExercise.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addExercise.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    override func configureAppearence() {
        title = Resourses.Strings.TabBar.title(for: .exercise)
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.searchController = searchController
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        addNavBarButton(at: .right, with: "Add")
    }

    func configureTable() {
        view.addSubview(table)
        setTableViewDelegate()

        table.register(ExerciseRoutinesTableViewCell.self , forCellReuseIdentifier: Resourses.Strings.Cell.tableCell)
        table.rowHeight = 92
        table.pin(to: view)
        table.allowsMultipleSelection = true
        table.allowsMultipleSelectionDuringEditing = true

    }

    func setTableViewDelegate() {
        table.delegate = self
        table.dataSource = self
    }
    
    func configureSearchExercises() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"

        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        searchController.searchBar.scopeButtonTitles = ResExerciseAll.allExGrouped
        searchController.searchBar.delegate = self
    }
    
    
//    func config() {
//        if
//    }
}



// MARK: - Extension TableView
extension ExerciseRoutinesTableView: UITableViewDelegate, UITableViewDataSource{
   

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let backgroundView = UIView()
        backgroundView.backgroundColor = Resourses.Colors.cellSelected
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Resourses.Strings.Cell.tableCell, for: indexPath) as! ExerciseRoutinesTableViewCell
        cell.selectedBackgroundView = backgroundView
        
        let exercise : ExerciseList
        
        if isFiltering {
            exercise = filteredExercises[indexPath.row]
        } else {
            exercise = allExercises[indexPath.row]
        }
        
        cell.set(exercise: exercise)
//        cell.exerciseInfoBtn = {[ unowned self ] in
//            let list = self.allExercises[indexPath.row]
            
            
            
            
//        }
        return cell
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if isFiltering {
            return filteredExercises.count
        }
        return allExercises.count
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let exercise = allExercises[indexPath.row]
        
        print(indexPath.row)
        selectedExercise.insert(exercise, at: selectedExercise.endIndex)
        print(selectedExercise)
    
    }

}


extension ExerciseRoutinesTableView: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        filterContentForSearchText(searchController.searchBar.text!, scope: scope)
    }

    func filterContentForSearchText(_ searchExercise : String, scope: String = ResExerciseTable.ExGrouped.allExercise) {
        filteredExercises = allExercises.filter({ (exercise) -> Bool in
            
            let doesCategoryMatch = (scope == ResExerciseTable.ExGrouped.allExercise) || (exercise.exerciseGroup == scope)
            
            if searhBarIsEmpty {
                return doesCategoryMatch
            }
            return exercise.exerciseTitle.lowercased().contains(searchExercise.lowercased())
        })

        table.reloadData()
    }

}

extension ExerciseRoutinesTableView : UISearchBarDelegate {
    
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
    
    
}


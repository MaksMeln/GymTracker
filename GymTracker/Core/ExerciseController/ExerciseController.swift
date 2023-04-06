//
//  ExerciseController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 20.01.23.
//

import UIKit

/// Class of Exercise Table
final class ExerciseController: GTBaseViewController {

    //MARK: - PROPERTIES
    private var table = UITableView(frame: .zero)
    var allExercises = [ExerciseList]() {
        didSet {
            allExercises.sort { $0.exerciseTitle < $1.exerciseTitle }
        }
    }
    
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
}

// MARK: - LIFECYCLE
extension ExerciseController {

    override func setupViews() {
        super.setupViews()
        
        configureTable()
        allExercises = fetchData()
        configureSearchExercises()
    }
    

//     MARK: - CONFIGURE
    override func configureAppearence() {
        title = Resourses.Strings.TabBar.title(for: .exercise)
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.searchController = searchController
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    func configureTable() {
        view.addSubview(table)
        setTableViewDelegate()

        table.register(ExerciseTableViewCell.self , forCellReuseIdentifier: Resourses.Strings.Cell.tableCell)
        table.rowHeight = 92
        table.pin(to: view)
    }

    func setTableViewDelegate() {
        table.delegate = self
        table.dataSource = self
    }
    
    func configureSearchExercises() {
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.searchBarStyle = .minimal
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = ResExerciseTable.Search.searchText
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        searchController.searchBar.scopeButtonTitles = ResExerciseAll.allExGrouped
        searchController.searchBar.delegate = self
    }
}

// MARK: - TABLEVIEW CONFIGURE
extension ExerciseController: UITableViewDelegate, UITableViewDataSource{


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let backgroundView = UIView()
        backgroundView.backgroundColor = Resourses.Colors.cellSelected
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Resourses.Strings.Cell.tableCell, for: indexPath) as! ExerciseTableViewCell
        cell.selectedBackgroundView = backgroundView
        
        let exercise : ExerciseList
        
        if isFiltering {
            exercise = filteredExercises[indexPath.row]
        } else {
            exercise = allExercises[indexPath.row]
        }
        
        cell.set(exercise: exercise)
        return cell
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        isFiltering == true ? filteredExercises.count : allExercises.count
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let exercise : ExerciseList
        
        if isFiltering {
            exercise = filteredExercises[indexPath.row]
        } else {
            exercise = allExercises[indexPath.row]
        }
        
        let vc = ExerciseDetailViewController()
        vc.set(exercise: exercise)
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
}
//MARK: - EXTENSION SEARCHCONTROLLER

extension ExerciseController: UISearchResultsUpdating {
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

//MARK: - UISEARCHBARDELEGATE
extension ExerciseController : UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
}

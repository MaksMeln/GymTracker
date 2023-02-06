//
//  ExerciseController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 20.01.23.
//

import UIKit


// Сделать возможность добавлять Упражнения
// Разобраться с серчбаром
// Упражнение не переходит на новое вью, а остается на том же (сделать модульное)


class ExerciseController: BaseController {

   private var table = UITableView(frame: .zero, style: .grouped)
    var allExercises = [[ExerciseTableList]]()
    var exerciseInfo = [[ExerciseInfoList]]()
    
    private var exercisesSearch = [ExerciseTableList]()
    private var searchController = UISearchController(searchResultsController: nil)
    private var filteredExercises = [ExerciseTableList]()
    private var searhBarIsEmpty : Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    private var isFiltering : Bool {
        return searchController.isActive && !searhBarIsEmpty
    }
 

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationEx()
        configureTable()
        configureSearchExercises()
        
        allExercises = fetchData()
        exerciseInfo = fetchInfoData()
        addNavBarButton(at: .right, with: "Новое")
        
    }
    
    func configureNavigationEx() {
        self.navigationItem.title = Resourses.Strings.TabBar.exercise
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
       
    
    func configureTable() {
        view.addSubview(table)
        setTableViewDelegate()
        table.register(ExerciseTableViewCell.self , forCellReuseIdentifier: Resourses.Strings.ExeciseString.Cell.tableCell)
        table.register(ExerciseTableHeaderCell.self, forHeaderFooterViewReuseIdentifier: Resourses.Strings.ExeciseString.Cell.headerCell)
        table.rowHeight = 70
        table.backgroundColor = Resourses.Color.backgroundColor
        table.pin(to: view)
        
    }
    
    func configureSearchExercises() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Поиск"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
    }

    func setTableViewDelegate() {
        table.delegate = self
        table.dataSource = self
    }

}

extension ExerciseController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Resourses.Strings.ExeciseString.Cell.tableCell, for: indexPath) as! ExerciseTableViewCell
        
//        var exercise : Exercise
//
//        if isFiltering {
//            exercise = filteredExercises[indexPath.row]
//        } else {
//            exercise = allExercises[indexPath.section][indexPath.row]
//        }
        
        let exercise = allExercises[indexPath.section][indexPath.row]
//        let exercise = allExercises[indexPath.row]
        cell.set(exercise: exercise)
        return cell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
//        if isFiltering {
//            return filteredExercises.count
//        } else {
        return allExercises.count
//        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0: return Resourses.AllExersices.Bicepc.allBicepc.count
        case 1: return Resourses.AllExersices.Legs.allLegs.count
        case 2: return Resourses.AllExersices.Back.allBack.count
        case 3: return Resourses.AllExersices.Shoulders.allShoulders.count
        case 4: return Resourses.AllExersices.Chest.allChest.count
        case 5: return Resourses.AllExersices.Tricepc.allTricepc.count
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: Resourses.Strings.ExeciseString.Cell.headerCell) as! ExerciseTableHeaderCell
        header.setHeader(section: section)
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let exerciseInfo = exerciseInfo[indexPath.section][indexPath.row]
        let exercise = allExercises[indexPath.section][indexPath.row]
        
        let vc = ExerciseInfoView()
        vc.imageExercise.image = exerciseInfo.exerciseImageInfo
        vc.label.text = exercise.exerciseTitle
       
        vc.youTubeButton = exerciseInfo.youTubeVideoKey
        present(vc, animated: true)
//        navigationController?.pushViewController(vc, animated: true)
    }
    
  
}


extension ExerciseController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
    
    func filterContentForSearchText(_ searchExercise : String) {
        
//        exercisesSearch = fetchDataSearch()
        filteredExercises = exercisesSearch.filter({ (exercise: ExerciseTableList) -> Bool in
            return exercise.exerciseTitle.lowercased().contains(searchExercise.lowercased())
        })
        
        table.reloadData()
    }
    
}

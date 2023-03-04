//
//  FoodsCaloriesController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 17.02.23.
//

import UIKit

class FoodsCaloriesController: UITableViewController {
    
    // MARK: - PROPERTIES
    private var foods = [Food]()
    private var filteredFoods = [Food]()
    
    private let searchController = UISearchController(searchResultsController: nil)
    
    private var isSearchMode :Bool {
        return !searchController.searchBar.text!.isEmpty && searchController.isActive
    }
    
}
//MARK: - LIFECYCLE
extension FoodsCaloriesController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = ResCalories.String.Title.foodsCalories
        
        configureSearchController()
        
        tableView.register(FoodCell.self, forCellReuseIdentifier: Resourses.Strings.Cell.foodCell)
        tableView.rowHeight = 130
    }
    
    func configureSearchController() {
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
        definesPresentationContext = false
        searchController.searchBar.placeholder =  ResCalories.String.Placecholder.foodsCalories
        searchController.searchBar.searchBarStyle = .minimal
        searchController.searchBar.showsCancelButton = false
    }
}

// MARK: - TABLE CONFIGURE
extension FoodsCaloriesController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: Resourses.Strings.Cell.foodCell, for: indexPath) as! FoodCell
        
        cell.viewModel = FoodCellView(food: food)
        return cell
    }
}

// MARK: - UISearchResultsUpdating CONFIGURE
extension FoodsCaloriesController : UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let serachText = searchController.searchBar.text?.lowercased() else {return}
        
        FoodService.fetchFood(query: serachText) { foods in
            DispatchQueue.main.async {
                self.foods = foods
                self.tableView.reloadData()
            }
        }
    }
}

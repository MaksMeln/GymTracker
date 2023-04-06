//
//  MeasurementTableViewController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 8.02.23.
//

import UIKit

/// Controller  for user body land
final class MeasurementTableViewController : UITableViewController {

//MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        title = ResUserInfo.Measurements.Title.title
        configureTableView()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveButtonTapped))
    }
    
    @objc func saveButtonTapped() {
        alertOk(title: "Success!")
        tableView.reloadData()
    }
    
//MARK: - TABLEVIEW CONFIGURE
    
    func configureTableView() {
        
        self.tableView = UITableView(frame: .zero, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MeasurementTableViewCell.self, forCellReuseIdentifier: Resourses.Strings.Cell.tableCell)
        tableView.register(MeasurementHeaderTableViewCell.self, forHeaderFooterViewReuseIdentifier: Resourses.Strings.Cell.headerCell)
        tableView.separatorStyle = .none
        tableView.bounces = false
        tableView.backgroundColor = .white
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0 : return 1
        case 1 : return 2
        case 2 : return 6
        default: return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Resourses.Strings.Cell.tableCell, for: indexPath) as! MeasurementTableViewCell
        cell.cellConfigure(indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! MeasurementTableViewCell
        
        switch indexPath {
//case 0
        case [0,0] : alertDateCell(label: cell.nameCellLabel) { (numberWeekDay, date)  in
                                           
        }
//case 1
        case [1,0] : alertBodyPartCell(label: cell.nameCellLabel,
                                          name: ResUserInfo.Measurements.ListTable.Alert.Name.growth,
                                       placecholder:ResUserInfo.Measurements.ListTable.Alert.Placecholder.growth)
        case [1,1] : alertWeightCell(label: cell.nameCellLabel,
                                        name: ResUserInfo.Measurements.ListTable.Alert.Name.bodyWeigt,
                                        placecholder: ResUserInfo.Measurements.ListTable.Alert.Placecholder.bodyWeigt)
            //case 2
        case [2,0] : alertBodyPartCell(label: cell.nameCellLabel,
                                          name: ResExerciseTable.ExGrouped.biceps,
                                          placecholder: ResUserInfo.Measurements.ListTable.Alert.Placecholder.biceps)

        case [2,1] : alertBodyPartCell(label: cell.nameCellLabel,
                                          name: ResExerciseTable.ExGrouped.legs,
                                          placecholder: ResUserInfo.Measurements.ListTable.Alert.Placecholder.legs)

        case [2,2] : alertBodyPartCell(label: cell.nameCellLabel,
                                          name: ResExerciseTable.ExGrouped.back,
                                            placecholder: ResUserInfo.Measurements.ListTable.Alert.Placecholder.back)
        case [2,3] : alertBodyPartCell(label: cell.nameCellLabel,
                                          name: ResExerciseTable.ExGrouped.shoulders,
                                          placecholder: ResUserInfo.Measurements.ListTable.Alert.Placecholder.shoulders)
        case [2,4] : alertBodyPartCell(label: cell.nameCellLabel,
                                          name: ResExerciseTable.ExGrouped.chest,
                                          placecholder: ResUserInfo.Measurements.ListTable.Alert.Placecholder.chest)
        case [2,5] : alertBodyPartCell(label: cell.nameCellLabel,
                                          name: ResExerciseTable.ExGrouped.triceps,
                                          placecholder: ResUserInfo.Measurements.ListTable.Alert.Placecholder.triceps)
        default : print("error")
        }
    }
    
//  MARK: - HEADERCELL
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: Resourses.Strings.Cell.headerCell) as! MeasurementHeaderTableViewCell
        header.setHeader(section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}

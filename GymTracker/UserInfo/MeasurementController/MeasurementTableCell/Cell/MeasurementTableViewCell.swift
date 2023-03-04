//
//  MeasurementTableViewCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 8.02.23.
//

import UIKit

class MeasurementTableViewCell : UITableViewCell {
    
  private let backgroundViewCell : UIView =  {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        view.backgroundColor = Resourses.Colors.UserInfo.backgroundCell
        return view
    }()
    
     let nameCellLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let cellNameArray = [[ResUserInfo.Measurements.ListTable.CellNameArray.date],
                         [ResUserInfo.Measurements.ListTable.CellNameArray.growth,
                          ResUserInfo.Measurements.ListTable.CellNameArray.weight],
                         [ResExerciseTable.ExGrouped.biceps,
                          ResExerciseTable.ExGrouped.legs,
                          ResExerciseTable.ExGrouped.back,
                          ResExerciseTable.ExGrouped.shoulders,
                          ResExerciseTable.ExGrouped.chest,
                          ResExerciseTable.ExGrouped.triceps]]
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
        
      
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func cellConfigure(indexPath: IndexPath) {
        nameCellLabel.text = cellNameArray[indexPath.section][indexPath.row]
    }
    
    func setConstraints() {
        
        self.addSubview(backgroundViewCell)
        self.addSubview(nameCellLabel)
        
        NSLayoutConstraint.activate([
            
            backgroundViewCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            backgroundViewCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            backgroundViewCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            backgroundViewCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1),
            
            nameCellLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            nameCellLabel.leadingAnchor.constraint(equalTo: backgroundViewCell.leadingAnchor, constant: 15),
        ])
        
    }
    
}

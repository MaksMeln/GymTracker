//
//  MeasurementHeaderTableViewCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 8.02.23.
//

import UIKit


class MeasurementHeaderTableViewCell : UITableViewHeaderFooterView {
    

    private var headerLabel : UILabel = {
        var label = UILabel()
        label.textColor = Resourses.Colors.ExerciseCol.exHeader
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()

    
    var headerArray = [ResUserInfo.Measurements.ListTable.Header.date,
                       ResUserInfo.Measurements.ListTable.Header.growthAndWeigt,
                       ResUserInfo.Measurements.ListTable.Header.bodyPart]
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = Resourses.Colors.backgroundColor
        configureExerciseTable()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureExerciseTable() {
        self.setupView(headerLabel)
        self.contentView.backgroundColor = Resourses.Colors.backgroundColor
        
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            headerLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
           
        ])
    }
    
    func setHeader(section: Int) {
        headerLabel.text = headerArray[section]
    }
}


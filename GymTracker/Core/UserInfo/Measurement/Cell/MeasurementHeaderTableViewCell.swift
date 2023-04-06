//
//  MeasurementHeaderTableViewCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 8.02.23.
//

import UIKit


/// Class of Header Measurement
final class MeasurementHeaderTableViewCell : UITableViewHeaderFooterView {
    

    private var headerLabel = GTLabel(text: "",
                                      font: UIFont.systemFont(ofSize: 15, weight: .bold),
                                      textColor: Resourses.Colors.ExerciseCol.exHeader)
    
    public var headerArray = [ResUserInfo.Measurements.ListTable.Header.date,
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
    
   private func configureExerciseTable() {
        self.addSubviews(headerLabel)
        self.contentView.backgroundColor = Resourses.Colors.backgroundColor
        
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            headerLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
    }
    
    public func setHeader(section: Int) {
        headerLabel.text = headerArray[section]
    }
}


//
//  ExerciseTableHeaderCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 25.01.23.
//

import UIKit

class ExerciseTableHeaderCell : UITableViewHeaderFooterView {
    
    var headerLabel = UILabel()
    var headerArray = [Resourses.Strings.ExeciseString.ExGrouped.bicepc,
                       Resourses.Strings.ExeciseString.ExGrouped.legs,
                       Resourses.Strings.ExeciseString.ExGrouped.back,
                       Resourses.Strings.ExeciseString.ExGrouped.shoulders,
                       Resourses.Strings.ExeciseString.ExGrouped.chest,
                       Resourses.Strings.ExeciseString.ExGrouped.tricepc,]
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = Resourses.Color.backgroundColor
        configureExerciseTable()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureExerciseTable() {
        self.addSubview(headerLabel)
        self.contentView.backgroundColor = Resourses.Color.backgroundColor
        
        headerLabel.textColor = Resourses.Color.ExerciseCol.exHeader
        headerLabel.font = Resourses.Fonts.helveticaRegular(with: 20)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            headerLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
           
        ])
    }
    
    func setHeader(section: Int) {
        headerLabel.text = headerArray[section]
    }
}

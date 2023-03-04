//
//  UserInfoCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 21.02.23.
//

import UIKit
class UserInfoCell: UITableViewCell {
    
//MARK: - PROPERTIES
    let measurumentImage = UIImageView()
    
   private let measurumentLabel = UILabel(text: ResUserInfo.Measurements.Title.title,
                                   font: Resourses.Fonts.helveticaRegular(with: 18),
                                   textColor: Resourses.Colors.defaultColor)
    
    private let measurumentDate = UILabel(text: "",
                                  font: Resourses.Fonts.helveticaBold(with: 13),
                                  textColor: Resourses.Colors.defaultColor)
    
//MARK: - LIFECYCLE
    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView(measurumentImage)
        setupView(measurumentLabel)
        setupView(measurumentDate)
        constraintViews()
        
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func configure(model: UserInfoModel) {
//        let dateFormater = DateFormatter()
//        dateFormater.dateFormat = "dd.MM.yyyy"
//        
//        measurumentDate.text = dateFormater.string(from: model.userInfoDate)
//        
//    }
    
//MARK: - CONSTRAINTSVIEWS
    func constraintViews() {
        NSLayoutConstraint.activate([
            
            measurumentImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            measurumentImage.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
        
            measurumentLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            measurumentLabel.leadingAnchor.constraint(equalTo: measurumentImage.trailingAnchor,constant: 20),
            
            measurumentDate.centerYAnchor.constraint(equalTo: centerYAnchor),
            measurumentDate.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -15),
        
        ])
        
    }
}

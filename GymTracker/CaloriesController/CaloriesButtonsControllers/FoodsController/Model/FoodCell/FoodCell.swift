//
//  FoodCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 21.02.23.
//

import UIKit

class FoodCell : UITableViewCell {
    
    //MARK: -PROPERTIES
    var viewModel : FoodCellView? {
        didSet{ configure() }
    }
    
    private let nameLabel : UILabel = {
        let label = UILabel()
        label.font = Resourses.Fonts.helveticaBold(with: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let caloriesLabel = UILabel()
    private let servingSizeLabel = UILabel()
    private let proteinLabel = UILabel()
    private let carbohydrateLabel = UILabel()
    
    
//MARK: -LIFECYCLE
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(nameLabel)
        cellConstraint()
        self.selectionStyle = .none
    }
    
    func cellConstraint() {
        
        let leftStackView = UIStackView(arrangedSubviews: [caloriesLabel ,servingSizeLabel])
        leftStackView.axis = .vertical
        leftStackView.spacing = 8
        leftStackView.alignment = .leading
        setupView(leftStackView)
        
        let rightStackView = UIStackView(arrangedSubviews: [proteinLabel ,carbohydrateLabel])
        rightStackView.axis = .vertical
        rightStackView.spacing = 8
        rightStackView.alignment = .leading
        setupView(rightStackView)
        
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            
            leftStackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            leftStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            rightStackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            rightStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - CONFIGURE
    func configure(){
        guard let viewModel = viewModel else {
            return
        }
        
        proteinLabel.text = ResCalories.String.FoodCell.protein + String(viewModel.protein) + ResCalories.String.FoodCell.gramm
        carbohydrateLabel.text = ResCalories.String.FoodCell.carbohydrate + String(viewModel.carbohydrates) + ResCalories.String.FoodCell.gramm
        caloriesLabel.text = ResCalories.String.FoodCell.calories + String(viewModel.calorie) + ResCalories.String.FoodCell.gramm
        servingSizeLabel.text = ResCalories.String.FoodCell.serving_Size + String(viewModel.serving_size) + ResCalories.String.FoodCell.gramm
        nameLabel.text = viewModel.name.uppercased()
    }
}


extension UIStackView {
    convenience init(axis: NSLayoutConstraint.Axis){
    self.init()
    
    self.axis = axis
    }
}
    

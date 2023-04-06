//
//  FoodsView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 5.04.23.
//

import UIKit

final class FoodsView: UIView {

    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        
//       setupView(caloriesCalcuationLabel)
//        constraintViews()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}

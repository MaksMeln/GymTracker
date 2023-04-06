//
//  GTBaseView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 7.02.23.
//

import UIKit

class GTBaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
        constraintViews()
        configureAppearance()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
}

@objc extension GTBaseView {
    func setupViews() {}
    func constraintViews() {}
    
    func configureAppearance() {
        backgroundColor = .white
    }
}

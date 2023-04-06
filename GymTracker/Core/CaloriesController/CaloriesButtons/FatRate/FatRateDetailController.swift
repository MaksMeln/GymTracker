//
//  FatRateDetailController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 18.02.23.
//

import UIKit

final class FatRateDetailController : GTBaseViewController {
    
//MARK: - PROPERTIES
   private let primaryView = FatRateDetailView()
    
//MARK: - LIFECYCLE
    override func setupViews() {
        super.setupViews()
        view.addSubviews(primaryView)
    }

    override func constraintViews() {
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 36),
            primaryView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            primaryView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
          ])
    }
}

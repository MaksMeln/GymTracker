//
//  UIViewTable + ext.swift
//  GymTracker
//
//  Created by Максим Мельничук on 23.01.23.
//

import UIKit

extension UIView {
    
    func pin(to superView: UIView) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor)
        ])
        
    }
}

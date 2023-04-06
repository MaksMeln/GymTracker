//
//  GTImageView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 5.03.23.
//

import UIKit

/// Extension from UIImageView
final class GTImageView: UIImageView {
    
    override init(image: UIImage?) {
         super.init(frame: .zero)
    
         self.image = image
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

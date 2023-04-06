//
//  GTScrollView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 4.03.23.
//
import UIKit

final class GTScrollView : UIScrollView {
    
    init(frame: CGRect, contentSize: CGSize) {
        super.init(frame: .zero)
        
        self.backgroundColor = .white
        self.frame = frame
        self.showsVerticalScrollIndicator = false
        self.contentSize = contentSize
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

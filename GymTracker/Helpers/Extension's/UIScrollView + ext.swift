//
//  UIScrollView + ext.swift
//  GymTracker
//
//  Created by Максим Мельничук on 4.03.23.
//

import UIKit

extension UIScrollView {
    convenience init(frame: CGRect, contentSize: CGSize){
    self.init()
    
    self.backgroundColor = .white
    self.frame = frame
    self.showsVerticalScrollIndicator = false
    self.contentSize = contentSize
    }
}

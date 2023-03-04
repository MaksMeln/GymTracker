//
//  AlertOk.swift
//  GymTracker
//
//  Created by Максим Мельничук on 22.02.23.
//

import UIKit

extension UIViewController {
    func alertOk(title: String) {
        
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: Resourses.Alert.ok, style: .default)
        
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
}

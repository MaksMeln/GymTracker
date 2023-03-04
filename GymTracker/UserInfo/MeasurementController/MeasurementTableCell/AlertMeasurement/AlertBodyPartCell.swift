//
//  AlertBodyPartCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 9.02.23.
//

import UIKit

extension UIViewController {
    
    func alertBodyPartCell(label : UILabel, name: String, placecholder : String) {
    
        let alert = UIAlertController(title: name, message: nil, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: Resourses.Alert.ok, style: .default) { (action) in
            
            let tfAlert = alert.textFields?.first
            guard let text = tfAlert?.text else {return}
            label.text = (text != "" ? text + "cm" : label.text)
        }
        
        alert.addTextField { (tfAlert) in
            tfAlert.placeholder = placecholder
        }
        
        let cancel = UIAlertAction(title: Resourses.Alert.cancel, style: .default, handler: nil)
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
}



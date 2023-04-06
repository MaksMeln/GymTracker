//
//  GTAlert.swift
//  GymTracker
//
//  Created by Максим Мельничук on 9.02.23.
//

import UIKit

extension UIViewController {
    
//MARK: - ALERT DateCell
    func alertDateCell(label: UILabel, completionHandler : @escaping(Int,Date) -> Void) {
        
        let alert = UIAlertController(title: "", message: nil, preferredStyle: .actionSheet )
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        
        alert.view.addSubview(datePicker)
        
        let ok = UIAlertAction(title: Resourses.Alert.ok, style: .default) { (action) in
            let dateFormater = DateFormatter()
            dateFormater.dateFormat = "dd.MM.yyyy"
            let dateString = dateFormater.string(from: datePicker.date)
            
            let calendar = Calendar.current
            let component = calendar.dateComponents([.weekday], from: datePicker.date)
            guard let weekday = component.weekday else {return}
            let numberWeekDay = weekday
            
            let date = datePicker.date
            completionHandler(numberWeekDay, date)
            
            label.text = dateString
        }
        
        let cancel = UIAlertAction(title: Resourses.Alert.cancel, style: .default, handler: nil)
        
        alert.addAction(ok)
        alert.addAction(cancel)
    
        alert.view.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.widthAnchor.constraint(equalTo: alert.view.widthAnchor).isActive = true
        datePicker.heightAnchor.constraint(equalToConstant: 160).isActive = true
        datePicker.topAnchor.constraint(equalTo: alert.view.topAnchor, constant: 20).isActive = true
        
        present(alert, animated: true, completion: nil)
    }
    
    
//MARK: - ALERT WeightCell
    func alertWeightCell(label : UILabel, name: String, placecholder : String) {
    
        let alert = UIAlertController(title: name, message: nil, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: Resourses.Alert.ok, style: .default) { (action) in
            

            
            let tfAlert = alert.textFields?.first
            guard let text = tfAlert?.text else {return}
            label.text = (text != "" ? text + "kg" : label.text)
        }
        
        alert.addTextField { (tfAlert) in
            tfAlert.placeholder = placecholder
        }
        
        let cancel = UIAlertAction(title: Resourses.Alert.cancel, style: .default, handler: nil)
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }

    
//MARK: - ALERT BodyPartCell
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
    
//MARK: - ALERT alertOk
    func alertOk(title: String) {
        
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: Resourses.Alert.ok, style: .default)
        
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
}

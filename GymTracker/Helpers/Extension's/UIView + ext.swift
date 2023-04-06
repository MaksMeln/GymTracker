//
//  UIView + ext.swift
//  GymTracker
//
//  Created by Максим Мельничук on 7.02.23.
//

import UIKit

extension UIView {
    convenience init(backgroundColor : UIColor?, borderColor: CGColor? , borderWidth: CGFloat ,cornerRadius: CGFloat, height : CGFloat, width: CGFloat ) {
        self.init()
        
        self.backgroundColor = backgroundColor
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.setDimensions(height: height, width: width)
    }
    
// EXTENSION WITH CONTENTSIZE
    convenience init(contentSize: CGSize) {
        self.init()
        self.frame.size = contentSize
    }
    
    
    func addBottomBorder() {
        let separator = UIView()
        separator.backgroundColor = Resourses.Colors.separator
        separator.frame = CGRect(x: 0,
                                 y: frame.height - 0.5,
                                 width: frame.width,
                                 height: 0.5)
        addSubview(separator)
    }
    
 
    func makeSystem(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside
        ])

        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }

    @objc func handleIn() {
        UIView.animate(withDuration: 0.15) { self.alpha = 0.55 }
    }

    @objc func handleOut() {
        UIView.animate(withDuration: 0.15) { self.alpha = 1 }
    }

    
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        })
    }
        
    func setDimensions(height: CGFloat, width: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func setHeight(_ height: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    func setWidth(_ width: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func setCenter(_ label: UILabel) {
        translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}



extension UIViewController {
    func showMessage() {
        let alert = UIAlertController(title: ResCalories.String.Alert.title, message: ResCalories.String.Alert.message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
}



//MARK: - UITableView
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

//
//  UserInfoController.swift
//  GymTracker
//
//  Created by Максим Мельничук on 20.01.23.
//

import UIKit
import FSCalendar

/// Controller to find out the information about User
final class UserInfoController:  GTBaseViewController {
    
//MARK: - PROPERTIES
    var calendarHeightConstraint : NSLayoutConstraint!
    
    private var calendarUserInfo : FSCalendar = {
        let calendar = FSCalendar()
        calendar.scope = .week
        return calendar
    }()
        
    private var showHideButton : UIButton = {
       let button = UIButton()
        button.setTitle("Open Calendar", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = Resourses.Fonts.helveticaRegular(with: 15)
        return button
    }()
    
    private let tableView : UITableView = {
        let table = UITableView()
        table.register(UserInfoCell.self, forCellReuseIdentifier: Resourses.Strings.Cell.tableCell)
        table.rowHeight = 70
        table.separatorStyle = .none
        return table
    }()
    
}
//MARK: - LIFECYCLE
extension UserInfoController {
    
    override func setupViews() {
        super.setupViews()
        
        view.addSubviews(calendarUserInfo, showHideButton, tableView)
        
        swipeAction()
        setCalendarDelegate()
        setTableViewDelegate()
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        calendarHeightConstraint = NSLayoutConstraint(item: calendarUserInfo, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300)
        
        calendarUserInfo.addConstraint(calendarHeightConstraint)
        
        NSLayoutConstraint.activate([
        
            calendarUserInfo.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            calendarUserInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            calendarUserInfo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
            showHideButton.topAnchor.constraint(equalTo: calendarUserInfo.bottomAnchor, constant: 0),
            showHideButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            showHideButton.widthAnchor.constraint(equalToConstant: 150),
            showHideButton.heightAnchor.constraint(equalToConstant: 20),
            
            
            tableView.topAnchor.constraint(equalTo: showHideButton.bottomAnchor, constant: 20),
            tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            tableView.widthAnchor.constraint(equalToConstant: 360),
        ])
    }

    override func configureAppearence() {
        super.configureAppearence()
        title = Resourses.Strings.TabBar.title(for: .userInfo)
        addNavBarButtonImage(at: .left, with: ResUserInfo.Images.measurements!)
        navigationController?.navigationBar.addBottomBorder()
        
        showHideButton.addTarget(self, action: #selector(showHiddenButtonTapped), for: .touchUpInside)
    }
    
    
//MARK: - HELPERS FUNCTION
    
    override func leftBarButtonTapped() {
        let list = MeasurementTableViewController()
        list.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(list, animated: true)
    }
    
// MARK: DELEGATE
    func setCalendarDelegate() {
        calendarUserInfo.delegate = self
        calendarUserInfo.dataSource = self
        
    }
    
    func setTableViewDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
// MARK: showHiddenButtonTapped
    @objc func showHiddenButtonTapped() {
        if calendarUserInfo.scope == .week {
            calendarUserInfo.setScope(.month, animated: true)
            showHideButton.setTitle("Close Calendar", for: .normal)
        } else {
            calendarUserInfo.setScope(.week, animated: true)
            showHideButton.setTitle("Open Calendar", for: .normal)
        }
    }
    
    func swipeAction() {
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
        swipeUp.direction = .up
        calendarUserInfo.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
        swipeDown.direction = .down
        calendarUserInfo.addGestureRecognizer(swipeDown)
        
    }
    
    @objc func handleSwipe(gesture: UISwipeGestureRecognizer) {
        switch gesture.direction {
        case .up  : showHiddenButtonTapped()
        case .down : showHiddenButtonTapped()
        default : break
        }
    }

}


//MARK: - TABLE CONFIGURATION
extension UserInfoController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Resourses.Strings.Cell.tableCell, for: indexPath) as! UserInfoCell
        
        cell.measurumentImage.image = ResUserInfo.Images.measurements!
        cell.layer.borderColor = Resourses.Colors.borderColor.cgColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 7
        return cell
    }
}

//MARK: - FSCalendarDelegate, FSCalendarDataSource
extension UserInfoController : FSCalendarDelegate, FSCalendarDataSource {
    
    func calendar(_ calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool) {
        calendarHeightConstraint.constant = bounds.height
        view.layoutIfNeeded()
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.weekday], from: date)
        guard components.weekday != nil else {return}

    }
}

//
//  NewTableViewCo.swift
//  GymTracker
//
//  Created by Максим Мельничук on 6.04.23.
//

import Foundation
import UIKit


class NewTableViewCo : GTBaseViewController {
    
    var favoriteList = [Int: Bool]()
    var tempList = [Int]()
    
    
    private let table : UITableView = {
        let table = UITableView(frame: .zero)
        table.register(NewTableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    
    override func setupViews() {
        super.setupViews()
        
        view.addSubviews(table)
        table.pin(to: view)
        table.delegate = self
        table.dataSource = self
        
        for i in 0...favoriteList.count {
            if favoriteList[i] == true {
                self.tempList.append(i)
            }
        }
    }
    
}

extension NewTableViewCo :UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
//        let exerciseTitle = allexe
        
        cell.textLabel?.text = names[tempList[indexPath.row]]
        return cell
    }
}

//
//  NewTableViewCell.swift
//  GymTracker
//
//  Created by Максим Мельничук on 6.04.23.
//

import UIKit

class NewTableViewCell: UITableViewCell {

    
    var exercise = [ExerciseList]()
    var label = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

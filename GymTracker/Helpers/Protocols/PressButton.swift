//
//  PressButtonStartRoutineProtocol.swift
//  GymTracker
//
//  Created by Максим Мельничук on 21.02.23.
//

import UIKit

protocol PressButton : AnyObject {
    func buttonPress(indexPath: IndexPath)
}

